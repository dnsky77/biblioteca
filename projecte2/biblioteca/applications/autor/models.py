from django.db import models
from django.db.models.fields import CharField
#Managers
from .managers import AutorManager
# Create your models here.


class Autor(models.Model):
    nombre = models.CharField('Nombre', max_length=50)
    apellidos = models.CharField('Apellidos', max_length=50)
    nacionalidad = models.CharField('Nacionalidad', max_length=30)
    edad = models.PositiveIntegerField()
    objects = AutorManager()
    def __str__(self):
        return self.nombre + "-" + self.apellidos
