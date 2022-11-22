from django.db import models

class PetType(models.Model):
    DOG ='DOG'
    CAT = 'CAT'
    REPTILE = 'REP'
    SMALL_ANIMAL = 'SMA'
    BIRD = 'BIR'
    
    PET_TYPE_CHOICES = [
        (DOG, 'Dog'),
        (CAT, 'Cat'),
        (REPTILE, 'Reptile'),
        (SMALL_ANIMAL, 'Small Animal'),
        (BIRD, 'Bird'),
    ]

    type = models.CharField(
        max_length=3,
        choices=PET_TYPE_CHOICES,
    )

    def __str__(self):
        return self.type