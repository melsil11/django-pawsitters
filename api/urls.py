from django.urls import path

from .views.user_views import SignUp, SignIn, SignOut, ChangePassword
from .views.pet_owner_views import PetOwnersView, PetOwnerDetailView
from .views.pet_sitter_views import PetSittersView, PetSitterDetailView
from .views.review_views import ReviewsView, ReviewDetailView
from .views.booking_views import BookingsView, BookingDetailView

urlpatterns = [
  	# Restful routing
    path('sign-up/', SignUp.as_view(), name='sign-up'),
    path('sign-in/', SignIn.as_view(), name='sign-in'),
    path('sign-out/', SignOut.as_view(), name='sign-out'),
    path('change-pw/', ChangePassword.as_view(), name='change-pw'),
    path('petowners/', PetOwnersView.as_view(), name='pet_owners'),
    path('petowners/<int:pk>/', PetOwnerDetailView.as_view(), name='pet_owners'),
    path('petsitters/', PetSittersView.as_view(), name='pet_sitters' ),
    path('petsitters/<int:pk>/', PetSitterDetailView.as_view(), name='pet_sitters'),
    path('reviews/', ReviewsView.as_view(), name='reviews'),
    path('reviews/<int:pk>/', ReviewDetailView.as_view(), name='review'),
    # path('reviews/create/<int:pk>/', ReviewCreateView.as_view(), name='review'),
    path('bookings/', BookingsView.as_view(), name='bookings'),
    path('bookings/<int:pk>/', BookingDetailView.as_view(), name='bookings')

]
