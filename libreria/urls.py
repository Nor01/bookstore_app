from django.urls import URLPattern, path
from . import views
from django.conf import settings
from django.contrib.staticfiles.urls import static

urlpatterns = [
    path('', views.inicio, name='index'),
    path('us', views.us, name='us'),
    path('books', views.books, name='books'),
    path('books/create', views.create, name='create'),
    path('books/edit', views.edit, name='edit'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
