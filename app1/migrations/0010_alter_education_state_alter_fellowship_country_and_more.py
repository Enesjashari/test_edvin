# Generated by Django 5.0.3 on 2024-05-14 20:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0009_alter_fellowship_country_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='education',
            name='state',
            field=models.CharField(choices=[('', [('US-UM', 'United States Minor Outlying Islands'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-IA', 'Iowa'), ('US-UT', 'Utah'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-ID', 'Idaho'), ('US-VA', 'Virginia'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IL', 'Illinois'), ('US-VI', 'Virgin Islands, U.S.'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-IN', 'Indiana'), ('US-VT', 'Vermont'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-WA', 'Washington'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-SC', 'South Carolina'), ('US-WI', 'Wisconsin'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-PA', 'Pennsylvania'), ('US-WV', 'West Virginia'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-WY', 'Wyoming'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-PR', 'Puerto Rico'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-SD', 'South Dakota'), ('US-TX', 'Texas'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-TN', 'Tennessee'), ('US-HI', 'Hawaii'), ('US-MP', 'Northern Mariana Islands'), ('US-RI', 'Rhode Island')])], db_column='State', max_length=20, null=True, verbose_name='State'),
        ),
        migrations.AlterField(
            model_name='fellowship',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-UM', 'United States Minor Outlying Islands'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-IA', 'Iowa'), ('US-UT', 'Utah'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-ID', 'Idaho'), ('US-VA', 'Virginia'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IL', 'Illinois'), ('US-VI', 'Virgin Islands, U.S.'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-IN', 'Indiana'), ('US-VT', 'Vermont'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-WA', 'Washington'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-SC', 'South Carolina'), ('US-WI', 'Wisconsin'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-PA', 'Pennsylvania'), ('US-WV', 'West Virginia'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-WY', 'Wyoming'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-PR', 'Puerto Rico'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-SD', 'South Dakota'), ('US-TX', 'Texas'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-TN', 'Tennessee'), ('US-HI', 'Hawaii'), ('US-MP', 'Northern Mariana Islands'), ('US-RI', 'Rhode Island')])], db_column='', max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='medicaleducation',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-UM', 'United States Minor Outlying Islands'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-IA', 'Iowa'), ('US-UT', 'Utah'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-ID', 'Idaho'), ('US-VA', 'Virginia'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IL', 'Illinois'), ('US-VI', 'Virgin Islands, U.S.'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-IN', 'Indiana'), ('US-VT', 'Vermont'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-WA', 'Washington'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-SC', 'South Carolina'), ('US-WI', 'Wisconsin'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-PA', 'Pennsylvania'), ('US-WV', 'West Virginia'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-WY', 'Wyoming'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-PR', 'Puerto Rico'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-SD', 'South Dakota'), ('US-TX', 'Texas'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-TN', 'Tennessee'), ('US-HI', 'Hawaii'), ('US-MP', 'Northern Mariana Islands'), ('US-RI', 'Rhode Island')])], db_column='Country', max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='medicaltraining',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-UM', 'United States Minor Outlying Islands'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-IA', 'Iowa'), ('US-UT', 'Utah'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-ID', 'Idaho'), ('US-VA', 'Virginia'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IL', 'Illinois'), ('US-VI', 'Virgin Islands, U.S.'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-IN', 'Indiana'), ('US-VT', 'Vermont'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-WA', 'Washington'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-SC', 'South Carolina'), ('US-WI', 'Wisconsin'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-PA', 'Pennsylvania'), ('US-WV', 'West Virginia'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-WY', 'Wyoming'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-PR', 'Puerto Rico'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-SD', 'South Dakota'), ('US-TX', 'Texas'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-TN', 'Tennessee'), ('US-HI', 'Hawaii'), ('US-MP', 'Northern Mariana Islands'), ('US-RI', 'Rhode Island')])], db_column='Country', max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='residency',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-UM', 'United States Minor Outlying Islands'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-IA', 'Iowa'), ('US-UT', 'Utah'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-ID', 'Idaho'), ('US-VA', 'Virginia'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IL', 'Illinois'), ('US-VI', 'Virgin Islands, U.S.'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-IN', 'Indiana'), ('US-VT', 'Vermont'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-WA', 'Washington'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-SC', 'South Carolina'), ('US-WI', 'Wisconsin'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-PA', 'Pennsylvania'), ('US-WV', 'West Virginia'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-WY', 'Wyoming'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-PR', 'Puerto Rico'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-SD', 'South Dakota'), ('US-TX', 'Texas'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-TN', 'Tennessee'), ('US-HI', 'Hawaii'), ('US-MP', 'Northern Mariana Islands'), ('US-RI', 'Rhode Island')])], db_column='Country', max_length=100, null=True, verbose_name='Country'),
        ),
    ]
