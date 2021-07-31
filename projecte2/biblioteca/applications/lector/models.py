from django.db import models
from django.db.models.base import Model
from django.db.models.fields import DateField
from applications.libro.models import Libro
# Create your models here.

class Lector(models.Model):
    nombres = models.CharField('Nombre', max_length=50)
    apellidos = models.CharField('Nombre', max_length=50)
    nacionalidad = models.CharField('Nombre', max_length=30)
    edad = models.PositiveIntegerField(default=0)

    def __str__(self):
        return self.nombres

class Prestamo(models.Model):
    lector = models.ForeignKey(Lector, on_delete=models.CASCADE)
    libro = models.ForeignKey(Libro, on_delete=models.CASCADE)
    fecha_prestamo = models.DateField()
    fecha_devolucion = models.DateField(blank=True, null=True)
    devuelto = models.BooleanField()

    def __str__(self):
        return self.libro.titulo