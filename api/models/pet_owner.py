from django.db import models
from django.contrib.auth import get_user_model
from .user import User
class PetOwner(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    pet_type = models.CharField(max_length=100)
    pet_name = models.CharField(max_length=100)
    
    owner = models.OneToOneField(
        User,
        on_delete=models.CASCADE,
        primary_key=True,
    )
    images = models.TextField(blank= True)
    
    # upload = models.ImageField(upload_to ='uploads/')

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.first_name} {self.last_name} {self.pet_type} {self.pet_name} "

