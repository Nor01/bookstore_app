from django.urls import URLPattern, path
from . import views

urlpatterns = [
    path('', views.inicio, name='index'),
    path('us', views.us, name='us'),
    path('books', views.books, name='books'),
    path('books/create', views.create, name='create')
]