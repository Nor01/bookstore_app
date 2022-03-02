from distutils.command.upload import upload
from tkinter import SEL_FIRST
from django.db import models
from importlib_metadata import version

class book(models.Model):
    id_book = models.AutoField(primary_key=True)
    title_book = models.CharField(max_length=100, verbose_name='Title')
    image_book = models.ImageField(upload_to='images/',  verbose_name='Image',null=True)
    description_book=  models.TextField(verbose_name='Description',null=True)

    def __str__(self):
        row = 'Title: ' + self.title_book
        return row
    
    def delete(self,using=None, keep_parents=False):
        self.image_book.storage.delete(self.image_book.name)
        super().delete()