from django.db import models
from django.db.models import Q

class LibroManager(models.Manager):
    """Manager para el modelo autor"""
    
    def listar_libros(self, kword):
        resultado = self.filter(
            titulo__icontains=kword,
            fecha__range=('2000-01-01', '2002-01-01')
            )
        return resultado