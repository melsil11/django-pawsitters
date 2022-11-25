from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated, IsAuthenticatedOrReadOnly
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404

from ..models.review import Review
from ..serializers import ReviewSerializer, ReviewMadeSerializer

class ReviewsView(generics.ListCreateAPIView):
    permission_classes=(IsAuthenticatedOrReadOnly,)
    serializer_class = ReviewSerializer
    def get(self, request):
        """Index request"""
        reviews = Review.objects.filter(owner=request.user.id)
        data = ReviewSerializer(reviews, many=True).data
        # serializer = ReviewMadeSerializer
        return Response({ 'reviews': data }) 

class ReviewDetailView(generics.RetrieveUpdateDestroyAPIView, generics.CreateAPIView):
    serializer_class = ReviewSerializer
    permission_classes=(IsAuthenticated,)
    
    def get(self, request, pk):
        """Show request"""
        review = get_object_or_404(Review, pk=pk)
        # serializer = ReviewMadeSerializer(review)
        if request.user != review.owner:
            raise PermissionDenied('Unauthorized, you do not own this review')
        data = ReviewSerializer(review).data
        return Response({ 'review': data })

    def delete(self, request, pk):
        """Delete request"""
        review = get_object_or_404(Review, pk=pk)
        if request.user != review.owner:
            raise PermissionDenied('Unauthorized, you do not own this review')
        review.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

    def partial_update(self, request, pk):
        """Update Request"""
        review = get_object_or_404(Review, pk=pk)
        # serializer = ReviewSerializer(review, data=request.data)
        if request.user != review.owner:
            raise PermissionDenied('Unauthorized, you do not own this review')
        request.data['review']['owner'] = request.user.id
        data = ReviewSerializer(review, data=request.data['review'], partial=True)
        if data.is_valid():
            data.save()
            return Response(status=status.HTTP_204_NO_CONTENT)
        return Response(data.errors, status=status.HTTP_400_BAD_REQUEST)

    def post(self, request, pk):
        print(request.data)
        print('this is a test')
        """Create request"""
        # serializer = ReviewMadeSerializer
        review = get_object_or_404(Review, pk=pk)
        request.data['review']['owner'] = request.user.id
        review = ReviewSerializer(data=request.data['review'])
        if review.is_valid():
            review.save()
            return Response({ 'review': review.data }, status=status.HTTP_201_CREATED)
        return Response(review.errors, status=status.HTTP_400_BAD_REQUEST) 
