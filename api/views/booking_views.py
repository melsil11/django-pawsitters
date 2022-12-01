from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404

from ..models.booking import Booking
from ..serializers import BookingSerializer, BookingBookedSerializer

# The views for Bookings.
class BookingsView(generics.ListCreateAPIView):
    permission_classes=(IsAuthenticated,)
    serializer_class = BookingSerializer
    def get(self, request):
        """Index request"""
        # Filter the bookings by owner, so you can only see your owned bookings
        bookings = Booking.objects.filter(owner=request.user.id) | Booking.objects.filter(pet_sitter=request.user.id)
        # Run the data through the serializer
        data = BookingBookedSerializer(bookings, many=True).data
        return Response({ 'bookings': data })

    def post(self, request):
        """Create request"""
        print(request.data, '///// request.data ///////')
        # Add user to request data object
        request.data['booking']['owner'] = request.user.id
        # Serialize/create booking
        booking = BookingSerializer(data=request.data['booking'])
        # If the booking data is valid according to our serializer...
        if booking.is_valid():
            # Save the created booking & send a response
            booking.save()
            return Response({ 'booking': booking.data }, status=status.HTTP_201_CREATED)
        # If the data is not valid, return a response with the errors
        return Response(booking.errors, status=status.HTTP_400_BAD_REQUEST)

class BookingDetailView(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = BookingSerializer
    permission_classes=(IsAuthenticated,)
    def get(self, request, pk):
        """Show request"""
        # Locate the booking to show
        booking = get_object_or_404(Booking, pk=pk)
        data = BookingBookedSerializer(booking)
        # Only want to show owned bookings
        if request.user != booking.owner:
            raise PermissionDenied('Unauthorized, you do not own this booking')

        # Run the data through the serializer so it's formatted
        data = BookingSerializer(booking).data
        return Response({ 'booking': data })

    def delete(self, request, pk):
        """Delete request"""
        # Locate booking to delete
        booking = get_object_or_404(Booking, pk=pk)
        # Check the booking's owner against the user making this request
        # unable to add  | request.user != booking.pet_sitter at this time
        if request.user != booking.owner:
            raise PermissionDenied('Unauthorized, you do not own this booking')
        # Only delete if the user owns the  booking
        booking.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    def partial_update(self, request, pk):
        """Update Request"""
        # Locate Booking
        # get_object_or_404 returns a object representation of our Booking
        booking = get_object_or_404(Booking, pk=pk)
        # Check the booking's owner against the user making this request
        # unable to add  | request.user != booking.pet_sitter at this time
        if request.user != booking.owner:
            raise PermissionDenied('Unauthorized, you do not own this booking')

        # Ensure the owner field is set to the current user's ID
        request.data['booking']['owner'] = request.user.id
        # Validate updates with serializer
        data = BookingBookedSerializer(booking, data=request.data['booking'], partial=True)
        # booking = BookingSerializer(data=request.data['booking'])
        if data.is_valid():
            # Save & send a 204 no content
            data.save()
            return Response(status=status.HTTP_204_NO_CONTENT)
        # If the data is not valid, return a response with the errors
        return Response(data.errors, status=status.HTTP_400_BAD_REQUEST)
