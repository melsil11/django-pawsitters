# Generated by Django 4.1.3 on 2022-12-07 21:01

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('email', models.EmailField(max_length=255, unique=True)),
                ('is_active', models.BooleanField(default=True)),
                ('is_staff', models.BooleanField(default=False)),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.permission', verbose_name='user permissions')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='PetOwner',
            fields=[
                ('first_name', models.CharField(max_length=100)),
                ('last_name', models.CharField(max_length=100)),
                ('pet_name', models.CharField(max_length=100)),
                ('pet_bio', models.TextField(blank=True, max_length=400)),
                ('owner', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL)),
                ('pet_type', models.TextField(choices=[('Dog', 'Dog'), ('Cat', 'Cat'), ('Small_Animal', 'Small Animal'), ('Reptile', 'Reptile'), ('Bird', 'Bird')])),
                ('images', models.TextField(blank=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='PetSitter',
            fields=[
                ('first_name', models.CharField(max_length=100)),
                ('last_name', models.CharField(max_length=100)),
                ('age', models.IntegerField(default=18)),
                ('dog_walking', models.BooleanField(default=False)),
                ('pet_sitting', models.BooleanField(default=False)),
                ('dog', models.BooleanField(default=False)),
                ('cat', models.BooleanField(default=False)),
                ('small_animal', models.BooleanField(default=False)),
                ('reptile', models.BooleanField(default=False)),
                ('bird', models.BooleanField(default=False)),
                ('rate', models.DecimalField(decimal_places=2, max_digits=5)),
                ('availability', models.CharField(default='monday', help_text='Days of the week, lower case, separated by a space', max_length=100)),
                ('from_time', models.TimeField()),
                ('to_time', models.TimeField()),
                ('medicine', models.BooleanField(default=False)),
                ('bio', models.TextField(blank=True)),
                ('image', models.TextField(blank=True)),
                ('owner', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='Review',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment', models.CharField(max_length=360)),
                ('rating', models.IntegerField(choices=[(1, 'One'), (2, 'Two'), (3, 'Three'), (4, 'Four'), (5, 'Five')])),
                ('image', models.TextField(blank=True)),
                ('owner_email', models.TextField(blank=True, max_length=100)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('pet_owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.petowner')),
                ('pet_sitter', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.petsitter')),
            ],
        ),
        migrations.CreateModel(
            name='Booking',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('start_day', models.DateField()),
                ('end_day', models.DateField()),
                ('start_time', models.TimeField()),
                ('end_time', models.TimeField()),
                ('note', models.CharField(blank=True, max_length=1000)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('pet_owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='owner_booking', to='api.petowner')),
                ('pet_sitter', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='sitter_booking', to='api.petsitter')),
            ],
        ),
    ]
