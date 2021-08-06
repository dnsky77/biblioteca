from django.db import models
from django.db.models.base import Model
from django.db.models.fields import DateField
from applications.libro.models import Libro
from applications.autor.models import Persona
# Create your models here.
from .managers import PrestamoManager

class Lector(Persona):
    class Meta:
        verbose_name = 'Lector'
        verbose_name_plural = 'Lectores'
    

class Prestamo(models.Model):
    lector = models.ForeignKey(Lector, on_delete=models.CASCADE)
    libro = models.ForeignKey(Libro, on_delete=models.CASCADE, related_name='libro_prestamo')
    fecha_prestamo = models.DateField()
    fecha_devolucion = models.DateField(blank=True, null=True)
    devuelto = models.BooleanField()
    objects = PrestamoManager()

    def __str__(self):
        return str(self.id) + '-' + self.libro.titulo