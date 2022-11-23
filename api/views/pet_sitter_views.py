from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404

from ..models.pet_sitter import PetSitter
from ..serializers import PetSitterSerializer

# Create your views here.
class PetSittersView(generics.ListCreateAPIView):
    permission_classes=(IsAuthenticatedOrReadOnly,)
    serializer_class = PetSitterSerializer
    def get(self, request):
        """Index request"""
        # Get all the pet_sitters:
        pet_sitters = PetSitter.objects.all()
        # Filter the pet_sitters by owner, so you can only see your owned pet_sitters
        # pet_sitters = PetSitter.objects.filter(owner=request.user.id)
        # Run the data through the serializer
        data = PetSitterSerializer(pet_sitters, many=True).data
        return Response({ 'pet_sitters': data })

    def post(self, request):
        """Create request"""
        # Add user to request data object
        request.data['pet_sitter']['owner'] = request.user.id
        # Serialize/create pet_sitter
        pet_sitter = PetSitterSerializer(data=request.data['pet_sitter'])
        # If the pet_sitter data is valid according to our serializer...
        if pet_sitter.is_valid():
            # Save the created pet_sitter & send a response
            pet_sitter.save()
            return Response({ 'pet_sitter': pet_sitter.data }, status=status.HTTP_201_CREATED)
        # If the data is not valid, return a response with the errors
        return Response(pet_sitter.errors, status=status.HTTP_400_BAD_REQUEST)

class PetSitterDetailView(generics.RetrieveUpdateDestroyAPIView):
    permission_classes=(IsAuthenticated,)
    def get(self, request, pk):
        """Show request"""
        # Locate the pet_sitter to show
        pet_sitter = get_object_or_404(PetSitter, pk=pk)
        # Only want to show owned pet_sitters?
        if request.user != pet_sitter.owner:
            raise PermissionDenied('Unauthorized, you do not own this pet_sitter')

        # Run the data through the serializer so it's formatted
        data = PetSitterSerializer(pet_sitter).data
        return Response({ 'pet_sitter': data })

    def delete(self, request, pk):
        """Delete request"""
        # Locate pet_sitter to delete
        pet_sitter = get_object_or_404(PetSitter, pk=pk)
        # Check the pet_sitter's owner against the user making this request
        if request.user != pet_sitter.owner:
            raise PermissionDenied('Unauthorized, you do not own this pet_sitter')
        # Only delete if the user owns the  pet_sitter
        pet_sitter.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    def partial_update(self, request, pk):
        """Update Request"""
        # Locate PetSitter
        # get_object_or_404 returns a object representation of our PetSitter
        pet_sitter = get_object_or_404(PetSitter, pk=pk)
        # Check the pet_sitter's owner against the user making this request
        if request.user != pet_sitter.owner:
            raise PermissionDenied('Unauthorized, you do not own this pet_sitter')

        # Ensure the owner field is set to the current user's ID
        request.data['pet_sitter']['owner'] = request.user.id
        # Validate updates with serializer
        data = PetSitterSerializer(pet_sitter, data=request.data['pet_sitter'], partial=True)
        if data.is_valid():
            # Save & send a 204 no content
            data.save()
            return Response(status=status.HTTP_204_NO_CONTENT)
        # If the data is not valid, return a response with the errors
        return Response(data.errors, status=status.HTTP_400_BAD_REQUEST)