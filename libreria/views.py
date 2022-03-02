from django import views
from django.shortcuts import render
from django.http import HttpResponse
from . models import book


# Create your views here.

def inicio(request):
    return render(request,'pages/index.html')

def us(request):
    return render(request,'pages/us.html')

def books(request):
    books = book.objects.all()
    return render(request,'books/index.html', {'books':books})

def create(request):
    return render(request,'books/create.html')

def edit(request):
    return render(request,'books/edit.html')