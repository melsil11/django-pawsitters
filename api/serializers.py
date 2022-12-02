from django.contrib.auth import get_user_model
from rest_framework import serializers

from .models.user import User
from .models.pet_owner import PetOwner
from .models.pet_sitter import PetSitter
from .models.booking import Booking
from .models.review import Review


class PetOwnerSerializer(serializers.ModelSerializer):
    class Meta:
        fields = '__all__'
        model = PetOwner

class PetSitterSerializer(serializers.ModelSerializer):
    class Meta:
        fields = '__all__'
        model = PetSitter

class BookingSerializer(serializers.ModelSerializer):
    class Meta:
        fields = '__all__'
        model = Booking

class BookingBookedSerializer(serializers.ModelSerializer):
    pet_owner = PetOwnerSerializer(many = False)
    pet_sitter = PetSitterSerializer(many = False)
    class Meta:
        fields = '__all__'
        model = Booking

class BookingEditSerializer(serializers.ModelSerializer):
    class Meta:
        fields = ('note', 'start_day', 'end_day', 'start_time', 'end_time')
        model = Booking

class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        fields = '__all__'
        model = Review

class ReviewMadeSerializer(serializers.ModelSerializer):
    pet_owner = serializers.StringRelatedField()
    pet_sitter = PetSitterSerializer(many = False)
    class Meta:
        fields = '__all__'
        model = Review

class ReviewEditSerializer(serializers.ModelSerializer):
    class Meta:
        fields = ('image', 'rating', 'comment')
        model = Review

class UserSerializer(serializers.ModelSerializer):
    # This model serializer will be used for User creation
    # The login serializer also inherits from this serializer
    # in order to require certain data for login
    class Meta:
        # get_user_model will get the user model (this is required)
        # https://docs.djangoproject.com/en/3.0/topics/auth/customizing/#referencing-the-user-model
        model = get_user_model()
        fields = ('id', 'email', 'password')
        extra_kwargs = { 'password': { 'write_only': True, 'min_length': 5 } }

    # This create method will be used for model creation
    def create(self, validated_data):
        return get_user_model().objects.create_user(**validated_data)

class UserRegisterSerializer(serializers.Serializer):
    # Require email, password, and password_confirmation for sign up
    email = serializers.CharField(max_length=300, required=True)
    password = serializers.CharField(required=True)
    password_confirmation = serializers.CharField(required=True, write_only=True)

    def validate(self, data):
        # Ensure password & password_confirmation exist
        if not data['password'] or not data['password_confirmation']:
            raise serializers.ValidationError('Please include a password and password confirmation.')

        # Ensure password & password_confirmation match
        if data['password'] != data['password_confirmation']:
            raise serializers.ValidationError('Please make sure your passwords match.')
        # if all is well, return the data
        return data

class ChangePasswordSerializer(serializers.Serializer):
    model = get_user_model()
    old = serializers.CharField(required=True)
    new = serializers.CharField(required=True)
