from django.db import models
from django.contrib.auth import get_user_model
from .user import User

# Create your models here.


class PetSitter(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    age = models.IntegerField(default=18)
    dog_walking = models.BooleanField(default=False)
    pet_sitting = models.BooleanField(default=False)
    dog = models.BooleanField(default=False)
    cat = models.BooleanField(default=False)
    small_animal = models.BooleanField(default=False)
    reptile = models.BooleanField(default=False)
    bird = models.BooleanField(default=False)
    rate = models.DecimalField(max_digits=5, decimal_places=2)
    availability = models.CharField(max_length=100, default='monday', help_text='Days of the week, lower case, separated by a space')
    from_time = models.TimeField()
    to_time = models.TimeField()
    medicine = models.BooleanField(default=False)
    bio = models.TextField(blank=True)
    image = models.TextField(blank=True)
    owner = models.OneToOneField(
        User,
        on_delete=models.CASCADE,
        primary_key=True,
    )
    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        # This must return a string
        return f"Pet Sitter: {self.first_name} {self.last_name}"

