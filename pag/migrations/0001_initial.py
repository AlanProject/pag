# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-05-25 03:22
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='article',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('article_titile', models.CharField(max_length=128)),
                ('article_content', models.CharField(max_length=128)),
            ],
        ),
    ]
