from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404
# trying to get no object
from django.core.exceptions import ObjectDoesNotExist

from ..models.pet_owner import PetOwner
from ..serializers import PetOwnerSerializer

# Create your views here.
class PetOwnersView(generics.ListCreateAPIView):
    permission_classes=(IsAuthenticated,)
    serializer_class = PetOwnerSerializer
    def get(self, request):
        """Index request"""
        # Get all the pet owners:
        pet_owners = PetOwner.objects.all()
        # Filter the owner, so you can only see your owned pets
        # petowners = PetOwner.objects.filter(owner=request.user.id)
        # Run the data through the serializer
        data = PetOwnerSerializer(pet_owners, many=True).data
        return Response({ 'pet_owners': data })

    def post(self, request):
        """Create request"""
        # Add user to request data object
        request.data['pet_owner']['owner'] = request.user.id
        # Serialize/create pet owner
        pet_owner = PetOwnerSerializer(data=request.data['pet_owner'])
        # If the pet owner data is valid according to our serializer...
        if pet_owner.is_valid():
            # Save the created pet owner & send a response
            pet_owner.save()
            return Response({ 'pet_owner': pet_owner.data }, status=status.HTTP_201_CREATED)
        # If the data is not valid, return a response with the errors
        return Response(pet_owner.errors, status=status.HTTP_400_BAD_REQUEST)

class PetOwnerDetailView(generics.RetrieveUpdateDestroyAPIView):
    permission_classes=(IsAuthenticated,)
    def get(self, request, pk):
        """Show request"""
        # Locate the pet owner to show
        try:
            pet_owner = PetOwner.objects.get(pk=pk)
            if request.user != pet_owner.owner:
                raise PermissionDenied('Unauthorized, you do not own this pet owner')
        except ObjectDoesNotExist:
            pet_owner = None

        # pet_owner = PetOwner.objects.get(pk=pk)
        # Only want to show owned pets?
      

        # Run the data through the serializer so it's formatted
        data = PetOwnerSerializer(pet_owner).data
        return Response({ 'pet_owner': data })

    def delete(self, request, pk):
        """Delete request"""
        # Locate pet owner to delete
        pet_owner = get_object_or_404(PetOwner, pk=pk)
        # Check the pet owner's owner against the user making this request
        if request.user != pet_owner.owner:
            raise PermissionDenied('Unauthorized, you do not own this pet owner')
        # Only delete if the user owns the  pet owner
        pet_owner.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    def partial_update(self, request, pk):
        """Update Request"""
        # Locate pet owner
        # get_object_or_404 returns a object representation of our pet owner
        pet_owner = get_object_or_404(PetOwner, pk=pk)
        # Check the pet owner's owner against the user making this request
        if request.user != pet_owner.owner:
            raise PermissionDenied('Unauthorized, you do not own this pet owner')

        # Ensure the owner field is set to the current user's ID
        request.data['pet_owner']['owner'] = request.user.id
        # Validate updates with serializer
        data = PetOwnerSerializer(pet_owner, data=request.data['pet_owner'], partial=True)
        if data.is_valid():
            # Save & send a 204 no content
            data.save()
            return Response(status=status.HTTP_204_NO_CONTENT)
        # If the data is not valid, return a response with the errors
        return Response(data.errors, status=status.HTTP_400_BAD_REQUEST)
