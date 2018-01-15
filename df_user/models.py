#!/usr/bin/env python
# -*- coding: utf-8 -*-

from django.db import models

# Create your models here.
class user(models.Model):
    name = models.CharField(max_length=20)
    pwd = models.CharField(max_length=20)
    gender = models.BooleanField()
    phone = models.CharField(max_length=12)
    address = models.CharField(max_length=100)


