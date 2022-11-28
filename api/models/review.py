from django.db import models
from django.contrib.auth import get_user_model
from .pet_sitter import PetSitter
from .pet_owner import PetOwner


class Review(models.Model):
    owner = models.ForeignKey(
      get_user_model(),
      on_delete=models.CASCADE
    )
    comment = models.CharField(max_length=360)
    class Rating (models.IntegerChoices):
        ONE = 1
        TWO = 2
        THREE = 3
        FOUR =  4
        FIVE = 5             

    rating = models.IntegerField(choices=Rating.choices)
    image = models.TextField(blank=True)
    pet_sitter = models.ForeignKey(PetSitter,
      on_delete=models.CASCADE)
    pet_owner = models.ForeignKey(PetOwner,
      on_delete=models.CASCADE)
    owner_email = models.TextField(max_length=100,blank=True )
      

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.pet_owner} {self.comment} {self.rating}"
