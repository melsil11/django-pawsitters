from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated, IsAuthenticatedOrReadOnly
from rest_framework.exceptions import PermissionDenied
from rest_framework import generics, status
from django.shortcuts import get_object_or_404

from ..models.review import Review
from ..serializers import ReviewSerializer, ReviewMadeSerializer

class ReviewsView(generics.ListCreateAPIView):
    permission_classes=(IsAuthenticatedOrReadOnly,)
    serializer_class = ReviewMadeSerializer
    def get(self, request):
        """Index request"""
        reviews = Review.objects.all()
        data = ReviewMadeSerializer(reviews, many=True).data
        return Response({ 'reviews': data }) 

    def post(self, request):
        print('request.data', request.data)
        """Create request"""
        request.data['review']['owner'] = request.user.id
        print('user', request.user.id)
        review = ReviewSerializer(data=request.data['review'])
        # print('review information', review)
        if review.is_valid():
            review.save()
            return Response({ 'review': review.data }, status=status.HTTP_201_CREATED)
        return Response(review.errors, status=status.HTTP_400_BAD_REQUEST) 

class ReviewDetailView(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = ReviewSerializer
    permission_classes=(IsAuthenticated,)
    
    def get(self, request, pk):
        """Show request"""
        review = get_object_or_404(Review, pk=pk)
        if request.user != review.owner:
            raise PermissionDenied('Unauthorized, you do not own this review')
        data = ReviewMadeSerializer(review).data
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
        print('this is the review-', review )
        # serializer = ReviewSerializer(review, data=request.data)
        if request.user != review.owner:
            raise PermissionDenied('Unauthorized, you do not own this review')
        request.data['review']['owner'] = request.user.id
        data = ReviewMadeSerializer(review, data=request.data['review'], partial=True)
        print('request.data', request.data)
        if data.is_valid():
            data.save()
            return Response(status=status.HTTP_204_NO_CONTENT)
        return Response(data.errors, status=status.HTTP_400_BAD_REQUEST)

