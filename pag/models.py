from __future__ import unicode_literals

from django.db import models

# Create your models here.

class article(models.Model):
    article_titile = models.CharField(max_length=128)
    article_content = models.CharField(max_length=128)