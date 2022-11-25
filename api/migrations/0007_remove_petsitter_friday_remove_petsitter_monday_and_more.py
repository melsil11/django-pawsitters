# Generated by Django 4.1.3 on 2022-11-25 01:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_remove_petsitter_from_date_remove_petsitter_to_date_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='petsitter',
            name='friday',
        ),
        migrations.RemoveField(
            model_name='petsitter',
            name='monday',
        ),
        migrations.RemoveField(
            model_name='petsitter',
            name='saturday',
        ),
        migrations.RemoveField(
            model_name='petsitter',
            name='sunday',
        ),
        migrations.RemoveField(
            model_name='petsitter',
            name='thursday',
        ),
        migrations.RemoveField(
            model_name='petsitter',
            name='tuesday',
        ),
        migrations.RemoveField(
            model_name='petsitter',
            name='wednesday',
        ),
        migrations.AddField(
            model_name='petsitter',
            name='availability',
            field=models.CharField(default='Monday', max_length=100),
        ),
    ]
