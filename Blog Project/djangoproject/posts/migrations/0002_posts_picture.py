# Generated by Django 2.1.2 on 2018-10-17 17:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='posts',
            name='picture',
            field=models.ImageField(default='posts/images/None/no_img.jpg', upload_to='posts/images/'),
        ),
    ]