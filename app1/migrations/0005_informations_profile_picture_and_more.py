# Generated by Django 5.0.3 on 2024-05-10 17:44

import app1.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0004_alter_fellowship_country_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='informations',
            name='profile_picture',
            field=models.ImageField(blank=True, null=True, upload_to=app1.models.user_images_path),
        ),
        migrations.AlterField(
            model_name='fellowship',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-ND', 'North Dakota'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-AZ', 'Arizona'), ('US-TX', 'Texas'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-CA', 'California'), ('US-UM', 'United States Minor Outlying Islands'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-CO', 'Colorado'), ('US-UT', 'Utah'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-CT', 'Connecticut'), ('US-VA', 'Virginia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-DC', 'District of Columbia'), ('US-VI', 'Virgin Islands, U.S.'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-DE', 'Delaware'), ('US-VT', 'Vermont'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-FL', 'Florida'), ('US-WA', 'Washington'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-GA', 'Georgia'), ('US-WI', 'Wisconsin'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-GU', 'Guam'), ('US-WV', 'West Virginia'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-HI', 'Hawaii'), ('US-WY', 'Wyoming'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-IA', 'Iowa'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-ID', 'Idaho'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IL', 'Illinois'), ('US-SD', 'South Dakota'), ('US-AS', 'American Samoa'), ('US-IN', 'Indiana'), ('US-TN', 'Tennessee')])], db_column='', max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='medicaleducation',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-ND', 'North Dakota'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-AZ', 'Arizona'), ('US-TX', 'Texas'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-CA', 'California'), ('US-UM', 'United States Minor Outlying Islands'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-CO', 'Colorado'), ('US-UT', 'Utah'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-CT', 'Connecticut'), ('US-VA', 'Virginia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-DC', 'District of Columbia'), ('US-VI', 'Virgin Islands, U.S.'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-DE', 'Delaware'), ('US-VT', 'Vermont'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-FL', 'Florida'), ('US-WA', 'Washington'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-GA', 'Georgia'), ('US-WI', 'Wisconsin'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-GU', 'Guam'), ('US-WV', 'West Virginia'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-HI', 'Hawaii'), ('US-WY', 'Wyoming'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-IA', 'Iowa'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-ID', 'Idaho'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IL', 'Illinois'), ('US-SD', 'South Dakota'), ('US-AS', 'American Samoa'), ('US-IN', 'Indiana'), ('US-TN', 'Tennessee')])], db_column='Country', max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='medicaltraining',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-ND', 'North Dakota'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-AZ', 'Arizona'), ('US-TX', 'Texas'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-CA', 'California'), ('US-UM', 'United States Minor Outlying Islands'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-CO', 'Colorado'), ('US-UT', 'Utah'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-CT', 'Connecticut'), ('US-VA', 'Virginia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-DC', 'District of Columbia'), ('US-VI', 'Virgin Islands, U.S.'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-DE', 'Delaware'), ('US-VT', 'Vermont'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-FL', 'Florida'), ('US-WA', 'Washington'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-GA', 'Georgia'), ('US-WI', 'Wisconsin'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-GU', 'Guam'), ('US-WV', 'West Virginia'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-HI', 'Hawaii'), ('US-WY', 'Wyoming'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-IA', 'Iowa'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-ID', 'Idaho'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IL', 'Illinois'), ('US-SD', 'South Dakota'), ('US-AS', 'American Samoa'), ('US-IN', 'Indiana'), ('US-TN', 'Tennessee')])], db_column='Country', max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='residency',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-ND', 'North Dakota'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-AZ', 'Arizona'), ('US-TX', 'Texas'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-CA', 'California'), ('US-UM', 'United States Minor Outlying Islands'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-CO', 'Colorado'), ('US-UT', 'Utah'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-CT', 'Connecticut'), ('US-VA', 'Virginia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-DC', 'District of Columbia'), ('US-VI', 'Virgin Islands, U.S.'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-DE', 'Delaware'), ('US-VT', 'Vermont'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-FL', 'Florida'), ('US-WA', 'Washington'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-GA', 'Georgia'), ('US-WI', 'Wisconsin'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-GU', 'Guam'), ('US-WV', 'West Virginia'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-HI', 'Hawaii'), ('US-WY', 'Wyoming'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-IA', 'Iowa'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-ID', 'Idaho'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IL', 'Illinois'), ('US-SD', 'South Dakota'), ('US-AS', 'American Samoa'), ('US-IN', 'Indiana'), ('US-TN', 'Tennessee')])], db_column='Country', max_length=100, null=True, verbose_name='Country'),
        ),
    ]
