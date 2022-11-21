from django.db import models
from django.contrib.auth import get_user_model
from .pet_type import PetTypes

# Create your models here.


class PetSitter(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    age = models.IntegerField(default=18)
    pet_types = models.ManyToManyField(PetTypes)
    rate = models.IntegerField()
    date = models.DateField
    time = models.TimeField
    medicine = models.BooleanField(default=False)
    color = models.CharField(max_length=100)
    image = models.TextField(null=True)
    owner = models.ForeignKey(
        get_user_model(),
        on_delete=models.CASCADE
    )

    def __str__(self):
        # This must return a string
        return f"Pet Sitter: {self.first_name} {self.first_name}"

