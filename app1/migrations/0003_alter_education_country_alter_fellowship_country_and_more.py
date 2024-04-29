# Generated by Django 5.0.3 on 2024-04-22 10:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app1', '0002_alter_education_country_alter_fellowship_country_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='education',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='fellowship',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='gschool',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='informations',
            name='birthstateprovince',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=100, null=True, verbose_name='Birth State/Province'),
        ),
        migrations.AlterField(
            model_name='informations',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='informations',
            name='mailingstateprovince',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=100, null=True, verbose_name='Mailing State/Province'),
        ),
        migrations.AlterField(
            model_name='informations',
            name='stateprovince',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=15, null=True, verbose_name='State/Province'),
        ),
        migrations.AlterField(
            model_name='medicaleducation',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='medicaltraining',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=100, null=True, verbose_name='Country'),
        ),
        migrations.AlterField(
            model_name='residency',
            name='country',
            field=models.CharField(blank=True, choices=[('', [('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-TN', 'Tennessee'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-TX', 'Texas'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-UM', 'United States Minor Outlying Islands'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-UT', 'Utah'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-VA', 'Virginia'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-VI', 'Virgin Islands, U.S.'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-VT', 'Vermont'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-SD', 'South Dakota'), ('US-WA', 'Washington'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-WI', 'Wisconsin'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-NC', 'North Carolina'), ('US-WV', 'West Virginia'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-WY', 'Wyoming'), ('US-IA', 'Iowa'), ('US-PR', 'Puerto Rico'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-RI', 'Rhode Island'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-SC', 'South Carolina'), ('US-AR', 'Arkansas'), ('US-IN', 'Indiana')])], max_length=100, null=True, verbose_name='Country'),
        ),
    ]