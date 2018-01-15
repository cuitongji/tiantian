#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.shortcuts import render

# Create your views here.
def register(request):
    return render(request, 'df_user/register.html')


def login(request):
    return render(request, 'df_user/login.html')