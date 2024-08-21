from django.urls import path
from .views import home_view, delete_view


urlpatterns = [
    path('h/', home_view, name='home_url'),
    path('di/<int:dl>/', delete_view, name = 'delete_url')
]
