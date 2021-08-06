from django.db import models
from django.db.models.fields import PositiveIntegerField
from django.db.models.fields.related import ForeignKey
from applications.autor.models import Autor
# Create your models here.
from .managers import LibroManager, CategoriaManager

class Categoria(models.Model):
    nombre = models.CharField(max_length=30)
    objects = CategoriaManager()

    def __str__(self):
        return str(self.id) + ' - ' + self.nombre

class Libro(models.Model):

    categoria = models.ForeignKey(
        Categoria,
        on_delete=models.CASCADE,
        related_name='categoria_libro'
    )
    autores = models.ManyToManyField(Autor)
    titulo = models.CharField(
        max_length=50
    )
    fecha = models.DateField('Fecha de lanzamiento')
    portada = models.ImageField(upload_to='portada', blank=True, null=True)
    visitas = models.PositiveIntegerField()
    stock = models.PositiveIntegerField(default=0)
    
    
    objects = LibroManager()

    class Meta:
        verbose_name = 'Libro'
        verbose_name_plural = 'Libros'
        ordering = ['titulo', 'fecha']
        
    def __str__(self):
        return str(self.id) + ' - ' + self.titulo
