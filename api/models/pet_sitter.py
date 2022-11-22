from django.db import models
from django.contrib.auth import get_user_model
from .pet_type import PetType

# Create your models here.


class PetSitter(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    age = models.IntegerField(default=18)
    pet_types = models.ManyToManyField(PetType)
    rate = models.IntegerField(default=0)
    from_date = models.DateField(auto_now_add=True)
    to_date = models.DateField()
    from_time = models.TimeField()
    to_time = models.TimeField()
    pet_sitting = models.BooleanField()
    dog_walking = models.BooleanField()
    medicine = models.BooleanField()
    image = models.TextField(blank=True)
    owner = models.ForeignKey(
        get_user_model(),
        on_delete=models.CASCADE
    )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        # This must return a string
        return f"Pet Sitter: {self.first_name} {self.first_name}"

