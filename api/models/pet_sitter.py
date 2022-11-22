from django.db import models
from django.contrib.auth import get_user_model

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
    rate = models.IntegerField(default=0)
    from_date = models.DateField()
    to_date = models.DateField()
    from_time = models.TimeField()
    to_time = models.TimeField()
    medicine = models.BooleanField(default=False)
    image = models.TextField(blank=True)
    owner = models.ForeignKey(
        get_user_model(),
        on_delete=models.CASCADE
    )

    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        # This must return a string
        return f"Pet Sitter: {self.first_name} {self.last_name}"

