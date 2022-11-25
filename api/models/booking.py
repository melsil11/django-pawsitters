from django.db import models
from django.contrib.auth import get_user_model
from .pet_owner import PetOwner
from .pet_sitter import PetSitter

# Create your models here.
class Booking(models.Model):
    # define fields
    # https://docs.djangoproject.com/en/3.0/ref/models/fields/
    pet_owner = models.ForeignKey(
        PetOwner,
        on_delete=models.CASCADE,
        related_name='owner_booking'
    )
    pet_sitter = models.ForeignKey(
        PetSitter,
        on_delete=models.CASCADE,
        related_name='sitter_booking'
    )
    owner = models.ForeignKey(
      get_user_model(),
      on_delete=models.CASCADE
    )
    start_day = models.DateField(max_length=8)
    end_day = models.DateField(max_length=8)
    start_time = models.TimeField(max_length=4)
    end_time = models.TimeField(max_length=4)
    note = models.CharField(max_length=100)

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        # This must return a string
        return f"{self.pet_sitter} will be pet-sitting for {self.pet_owner} on {self.start_day} at {self.start_time}. {self.note}"

    def as_dict(self):
        """Returns dictionary version of Booking models"""
        return {
            'id': self.id,
            'pet owner': self.pet_owner,
            'pet-sitter': self.pet_sitter,
            'scheduled day for start': self.start_day,
            'scheduled day for end': self.end_day,
            'scheduled start time': self.start_time,
            'scheduled end time': self.end_time,

        }
