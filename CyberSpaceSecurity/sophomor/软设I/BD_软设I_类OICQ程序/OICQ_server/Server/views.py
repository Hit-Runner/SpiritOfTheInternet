from django.shortcuts import render
from django.http import JsonResponse
# Create your views here.
def test(requests):
    return JsonResponse({'key': 'succeed'})