from django import views
from django.shortcuts import render
from django.http import HttpResponse



# Create your views here.

def inicio(request):
    return render(request,'pages/index.html')

def us(request):
    return render(request,'pages/us.html')

def books(request):
    return render(request,'books/index.html')

def create(request):
    return render(request,'books/create.html')