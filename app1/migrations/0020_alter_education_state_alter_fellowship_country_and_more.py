# Generated by Django 5.0.3 on 2024-05-18 10:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0019_alter_education_state_alter_fellowship_country_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='education',
            name='state',
            field=models.CharField(choices=[('', [('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-NM', 'New Mexico'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-VA', 'Virginia'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IN', 'Indiana'), ('US-SD', 'South Dakota'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-KS', 'Kansas'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KY', 'Kentucky'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-LA', 'Louisiana'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-MA', 'Massachusetts'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-MD', 'Maryland')])], db_column='State', max_length=20, null=True, verbose_name='State'),
        ),
        migrations.AlterField(
            model_name='fellowship',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-NM', 'New Mexico'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-VA', 'Virginia'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IN', 'Indiana'), ('US-SD', 'South Dakota'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-KS', 'Kansas'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KY', 'Kentucky'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-LA', 'Louisiana'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-MA', 'Massachusetts'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-MD', 'Maryland')])], db_column='', max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='medicaleducation',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-NM', 'New Mexico'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-VA', 'Virginia'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IN', 'Indiana'), ('US-SD', 'South Dakota'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-KS', 'Kansas'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KY', 'Kentucky'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-LA', 'Louisiana'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-MA', 'Massachusetts'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-MD', 'Maryland')])], db_column='Country', max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='medicaltraining',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-NM', 'New Mexico'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-VA', 'Virginia'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IN', 'Indiana'), ('US-SD', 'South Dakota'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-KS', 'Kansas'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KY', 'Kentucky'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-LA', 'Louisiana'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-MA', 'Massachusetts'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-MD', 'Maryland')])], db_column='Country', max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='residency',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-NM', 'New Mexico'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-VA', 'Virginia'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-NC', 'North Carolina'), ('US-IN', 'Indiana'), ('US-SD', 'South Dakota'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-KS', 'Kansas'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KY', 'Kentucky'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-LA', 'Louisiana'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-MA', 'Massachusetts'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-MD', 'Maryland')])], db_column='Country', max_length=100, null=True, verbose_name='Country'),
        ),
    ]