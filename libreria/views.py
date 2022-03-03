from django import views
from django.shortcuts import render, redirect
from django.http import HttpResponse
from . models import book
from .forms import BookForm

# Create your views here.

def inicio(request):
    return render(request,'pages/index.html')

def us(request):
    return render(request,'pages/us.html')

def books(request):
    books = book.objects.all()
    return render(request,'books/index.html', {'books':books})

def create(request):
    formulario = BookForm(request.POST or None, request.FILES or None)
    if formulario.is_valid():
        formulario.save()
        return redirect('books')
    return render(request,'books/create.html', {'formulario':formulario})

def edit(request, id):
    bookEdit = book.objects.get(id_book=id)
    formulario = BookForm(request.POST or None, request.FILES or None, instance=bookEdit)
    if formulario.is_valid() and request.POST:
        formulario.save()
        return redirect('books')
    return render(request,'books/edit.html',{'formulario':formulario})

def delete(request, id):
    bookD = book.objects.get(id_book=id)
    bookD.delete()
    return redirect('books')