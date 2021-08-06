from django.db import models
from django.db.models.fields import CharField
from django.db.models.fields import PositiveIntegerField
#Managers
from .managers import AutorManager
# Create your models here.

class Persona(models.Model):
    nombres = models.CharField('Nombre', max_length=50)
    apellidos = models.CharField('Apellidos', max_length=50)
    nacionalidad = models.CharField('Nacionalidad', max_length=30)
    edad = models.PositiveIntegerField()
    
    def __str__(self):
        return str(self.id) + ' - ' + self.nombres + "-" + self.apellidos
    
    class Meta:
        abstract = True

class Autor(Persona):
    seudonimo = models.CharField('seudonimo', max_length=50, blank=True)
    objects = AutorManager()