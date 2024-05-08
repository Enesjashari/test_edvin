# Generated by Django 5.0.3 on 2024-05-07 18:17

import app1.models
import django.db.models.deletion
import django.utils.timezone
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Address',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('street_number', models.CharField(blank=True, db_column='Street Number', max_length=255, null=True)),
                ('route', models.CharField(blank=True, db_column='Route', max_length=255, null=True)),
                ('locality', models.CharField(blank=True, db_column='Locality', max_length=255, null=True)),
                ('administrative_area_level_1', models.CharField(blank=True, db_column='Administrative Area L1', max_length=255, null=True)),
                ('postal_code', models.CharField(blank=True, db_column='Postal Code', max_length=20, null=True)),
                ('country', models.CharField(blank=True, db_column='Country', max_length=255, null=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Agreements',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('docid', models.CharField(db_column='Docid', default='', max_length=20, null=True, verbose_name='Docid')),
                ('docidnm', models.CharField(db_column='DocNm', default='', max_length=20, null=True, verbose_name='DocNm')),
                ('openjobs', models.CharField(db_column='Open Jobs', default='', max_length=20, null=True, verbose_name='Open Jobs')),
                ('active', models.CharField(db_column='Active Jobs', default='', max_length=20, null=True, verbose_name='Active Jobs')),
                ('historical', models.CharField(db_column='Filled Historical Jobs', default='', max_length=20, null=True, verbose_name='Filled Historical Jobs')),
                ('startdate', models.DateField(blank=True, db_column='Start Date', default=django.utils.timezone.now, verbose_name='Start Date')),
                ('expdate', models.DateField(blank=True, db_column='Expdate', default=django.utils.timezone.now, verbose_name='Expiration Date')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Agreements',
                'verbose_name_plural': 'Agreements',
                'db_table': 'Agreements',
            },
        ),
        migrations.CreateModel(
            name='Boardcertifications',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('degree', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree', max_length=20, null=True, verbose_name='Degree')),
                ('boardtype', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Board Type', max_length=20, null=True, verbose_name='Board Type')),
                ('ofspeciality', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Of Speciality', max_length=20, null=True, verbose_name='Of (Speciality)')),
                ('withcertification', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='With Certification', max_length=20, null=True, verbose_name='With Certification In (if applicable)')),
                ('certified', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Certified', max_length=20, null=True, verbose_name='Certified')),
                ('cdate', models.DateField(blank=True, db_column='Certified Date', default=django.utils.timezone.now, verbose_name='Certified Date')),
                ('recertified', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Recertified', max_length=20, null=True, verbose_name='Recertified')),
                ('rcdate', models.DateField(blank=True, db_column='Recertified Date', default=django.utils.timezone.now, verbose_name='Recertified Date')),
                ('expdate', models.DateField(blank=True, db_column='Expiration Date', default=django.utils.timezone.now, verbose_name='Expiration Date')),
                ('lftmcert', models.CharField(choices=[('', [('yes', 'Yes'), ('no', 'No')])], db_column='Lifetime Cert', max_length=20, verbose_name='Lifetime Certification?')),
                ('ifnotcert', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='If not cert', max_length=20, null=True, verbose_name='If not certified, have you been accepted to take a specialty examination?')),
                ('datesch', models.DateField(blank=True, db_column='Date Scheduled', default=django.utils.timezone.now, verbose_name='Date Scheduled')),
                ('ifnot', models.TextField(blank=True, db_column='If not', null=True, verbose_name='If Not certified, how many times have you taken a specialty board and failed to pass?')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Board Certifications',
                'verbose_name_plural': 'Board Certifications',
                'db_table': 'BoardCertifications',
            },
        ),
        migrations.CreateModel(
            name='Dearegistration',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('state', models.CharField(db_column='State', max_length=20, null=True, verbose_name='State')),
                ('rnumber', models.CharField(db_column='Reg Number', max_length=20, null=True, verbose_name='Registration Number')),
                ('dissued', models.DateField(blank=True, db_column='Dissued', default=django.utils.timezone.now, verbose_name='Date Issued')),
                ('expdate', models.DateField(blank=True, db_column='Expdate', default=django.utils.timezone.now, verbose_name='Expiration Date')),
                ('ifu', models.TextField(blank=True, db_column='IFU', null=True, verbose_name='If you do not currently possess a DEA Registration, please explain here:')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'DEA Registration',
                'verbose_name_plural': 'DEA Registration',
                'db_table': 'DEARegistration',
            },
        ),
        migrations.CreateModel(
            name='Education',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('institution', models.CharField(db_column='Institution', max_length=20, null=True)),
                ('degreeaw', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree Awarded', max_length=20, null=True, verbose_name='Degree Awarded')),
                ('degree', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree', max_length=20, null=True, verbose_name='Degree')),
                ('address', models.CharField(db_column='Address', max_length=20, null=True, verbose_name='Address')),
                ('city', models.CharField(db_column='City', max_length=20, null=True, verbose_name='City')),
                ('state', models.CharField(db_column='State', max_length=20, null=True, verbose_name='State')),
                ('zip', models.CharField(db_column='ZCode', max_length=5, null=True, verbose_name='Zip Code')),
                ('country', models.CharField(blank=True, db_column='Country', max_length=100, null=True, verbose_name='Country')),
                ('phone', models.CharField(db_column='Phone', max_length=10, null=True, verbose_name='Phone')),
                ('start', models.DateField(blank=True, db_column='Start', default=django.utils.timezone.now)),
                ('end', models.DateField(blank=True, db_column='End', default=django.utils.timezone.now)),
                ('graduated', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Graduated', max_length=20, null=True, verbose_name='Graduated')),
                ('date', models.DateField(blank=True, db_column='Date of G', default=django.utils.timezone.now, verbose_name='Date of Graduation')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Education',
                'verbose_name_plural': 'Education',
                'db_table': 'Education',
            },
        ),
        migrations.CreateModel(
            name='Fellowship',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('institution', models.CharField(db_column='Institution', max_length=20, null=True)),
                ('speciality', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Speciality', max_length=20, null=True, verbose_name='Speciality')),
                ('gsurgery', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree', max_length=20, null=True, verbose_name='Degree')),
                ('pchair', models.CharField(db_column='Program Chair', max_length=20, null=True, verbose_name='Program Chair')),
                ('address', models.CharField(db_column='Address', max_length=20, null=True, verbose_name='Address')),
                ('city', models.CharField(db_column='City', max_length=20, null=True, verbose_name='City')),
                ('state', models.CharField(db_column='State', max_length=20, null=True, verbose_name='State')),
                ('zip', models.CharField(db_column='ZCode', max_length=5, null=True, verbose_name='Zip Code')),
                ('country', models.CharField(blank=True, choices=[('', [('US-VI', 'Virgin Islands, U.S.'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-IN', 'Indiana'), ('US-VT', 'Vermont'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-WA', 'Washington'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-WI', 'Wisconsin'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-WV', 'West Virginia'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-PR', 'Puerto Rico'), ('US-WY', 'Wyoming'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-SD', 'South Dakota'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-VA', 'Virginia'), ('US-TN', 'Tennessee'), ('US-NC', 'North Carolina'), ('US-TX', 'Texas'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-RI', 'Rhode Island'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-SC', 'South Carolina'), ('US-IA', 'Iowa'), ('US-UM', 'United States Minor Outlying Islands'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-UT', 'Utah'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-AR', 'Arkansas')])], db_column='', max_length=100, null=True, verbose_name='Country')),
                ('phone', models.CharField(db_column='Phone', max_length=10, null=True, verbose_name='Phone')),
                ('start', models.DateField(blank=True, db_column='Start', default=django.utils.timezone.now)),
                ('end', models.DateField(blank=True, db_column='End', default=django.utils.timezone.now)),
                ('programc', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Pprogram C', max_length=20, null=True, verbose_name='Program Completed')),
                ('ifnot', models.TextField(blank=True, db_column='If not', null=True, verbose_name='If Not Completed, please explain')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Fellowship',
                'verbose_name_plural': 'Fellowship',
                'db_table': 'Fellowship',
            },
        ),
        migrations.CreateModel(
            name='Fifthpathway',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file', models.FileField(db_column='File', upload_to=app1.models.user_directory_path_fifthpathway)),
                ('uploaded_at', models.DateTimeField(auto_now_add=True, db_column='Uploaded at')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Fifth Pathway',
                'db_table': 'FifthPathway',
            },
        ),
        migrations.CreateModel(
            name='gschool',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('institution', models.CharField(db_column='Institution', max_length=20, null=True)),
                ('degreeaw', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree Awarded', max_length=20, null=True, verbose_name='Degree Awarded')),
                ('degree', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree', max_length=20, null=True, verbose_name='Degree')),
                ('address', models.CharField(db_column='Address', max_length=20, null=True, verbose_name='Address')),
                ('city', models.CharField(db_column='City', max_length=20, null=True, verbose_name='City')),
                ('state', models.CharField(db_column='State', max_length=20, null=True, verbose_name='State')),
                ('zip', models.CharField(db_column='ZCode', max_length=5, null=True, verbose_name='Zip Code')),
                ('country', models.CharField(blank=True, db_column='Country', max_length=100, null=True, verbose_name='Country')),
                ('phone', models.CharField(db_column='Phone', max_length=10, null=True, verbose_name='Phone')),
                ('start', models.DateField(blank=True, db_column='Start', default=django.utils.timezone.now)),
                ('end', models.DateField(blank=True, db_column='End', default=django.utils.timezone.now)),
                ('graduated', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Graduated', max_length=20, null=True, verbose_name='Graduated')),
                ('date', models.DateField(blank=True, db_column='Date of G', default=django.utils.timezone.now, verbose_name='Date of Graduation')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Other Graduate School',
                'verbose_name_plural': 'Other Graduate School',
                'db_table': 'OtherGraduateSchool',
            },
        ),
        migrations.CreateModel(
            name='hospitals',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('hospitalid', models.CharField(db_column='Hospital ID', default='', max_length=20, null=True, verbose_name='Hospital ID')),
                ('name', models.CharField(db_column='Hospital Name', default='', max_length=20, null=True, verbose_name='Hospital Name')),
                ('openjobs', models.CharField(db_column='Open Jobs', default='', max_length=20, null=True, verbose_name='Open Jobs')),
                ('active', models.CharField(db_column='Active Jobs', default='', max_length=20, null=True, verbose_name='Active Jobs')),
                ('historical', models.CharField(db_column='Filled Historical Jobs', default='', max_length=20, null=True, verbose_name='Filled Historical Jobs')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Hospitals',
                'verbose_name_plural': 'Hospitals',
                'db_table': 'Hospitals',
            },
        ),
        migrations.CreateModel(
            name='Informations',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('preffix', models.CharField(blank=True, choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Prefix', default='', max_length=20, verbose_name='Preffix')),
                ('suffix', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Sufix', default='', max_length=20, verbose_name='Suffix')),
                ('socialsecuritynumber', models.CharField(blank=True, db_column='Social Security Number', max_length=10, verbose_name='Social Security Number')),
                ('preferredphonetype', models.CharField(blank=True, choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Preferred Phone Type', max_length=20, verbose_name='Preferred Phone Type')),
                ('phone', models.CharField(blank=True, db_column='Phone', default='', max_length=10, verbose_name='Phone')),
                ('otherphone', models.CharField(blank=True, db_column='Other Phone', default='', max_length=10, verbose_name='Other Phone')),
                ('streetno', models.CharField(blank=True, db_column='Street No', default='', max_length=100, verbose_name='Street No')),
                ('address', models.CharField(blank=True, db_column='Address', default='', max_length=100, verbose_name='Address')),
                ('city', models.CharField(blank=True, db_column='City', default='', max_length=100, verbose_name='City')),
                ('stateprovince', models.CharField(blank=True, db_column='State/Province', default='', max_length=100, verbose_name='State/Province')),
                ('zipcode', models.CharField(blank=True, db_column='ZCode', default='', max_length=5, verbose_name='Zip Code')),
                ('country', models.CharField(blank=True, db_column='Country', default='', max_length=100, verbose_name='Country')),
                ('mailaddress', models.CharField(blank=True, db_column='Mailing Address', default='', max_length=100, verbose_name='Mailing Address')),
                ('mailcity', models.CharField(blank=True, db_column='Mailing City', default='', max_length=100, verbose_name='Mailing City')),
                ('mailingstateprovince', models.CharField(blank=True, db_column='Mailing State/Province', default='', max_length=100, verbose_name='Mailing State/Province')),
                ('mailingzipcode', models.CharField(blank=True, db_column='Mailing Zip Code', default='', max_length=5, verbose_name='Mailing Zip Code')),
                ('mailingcountry', models.CharField(blank=True, db_column='Mailing Country', default='', max_length=100, verbose_name='Mailing Country')),
                ('birthcity', models.CharField(blank=True, db_column='Birth City', default='', max_length=100, verbose_name='Birth City')),
                ('birthcountry', models.CharField(blank=True, db_column='Birth Country', default='', max_length=100, verbose_name='Birth Country')),
                ('birthstateprovince', models.CharField(blank=True, db_column='Birth State/Province', default='', max_length=100, verbose_name='Birth State/Province')),
                ('npinumber', models.CharField(blank=True, db_column='NPI Number', default='', max_length=100, verbose_name='NPI NUMBER')),
                ('languagesspokenotherthanenglish', models.CharField(blank=True, db_column='Other Languages', default='', max_length=100, verbose_name='Languages  Spoken other than English')),
                ('emergencycontactname', models.CharField(blank=True, db_column='Emergency Name', default='', max_length=100, verbose_name='Emergency Contact Name')),
                ('relationshiptoapplicant', models.CharField(blank=True, db_column='Relationship To Applicant', default='', max_length=100, verbose_name='Relationship To Applicant')),
                ('emergencycontactnumber', models.CharField(blank=True, db_column='Emergency Number', default='', max_length=100, verbose_name='Emergency Contact Number')),
                ('emergencycontactemail', models.CharField(blank=True, db_column='Emergency Email', default='', max_length=100, verbose_name='Emergency Contact Email')),
                ('primaryspeciality', models.CharField(blank=True, db_column='Primary Speciality', default='', max_length=100, verbose_name='Primary Speciality')),
                ('generalsurgery', models.CharField(blank=True, db_column='General Surgery', default='', max_length=100, verbose_name='General Surgery')),
                ('secondaryspeciality', models.CharField(blank=True, db_column='Secondary Speciality', default='', max_length=100, verbose_name='Secondary Speciality')),
                ('abletoworkintheusa', models.BooleanField(blank=True, db_column='Able to work USA', default=False, verbose_name='Are you able to work legally in the USA')),
                ('workauthorizationa', models.CharField(blank=True, choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Work Auth', default='', max_length=100, verbose_name='Work Authorization')),
                ('user', models.OneToOneField(db_column='User', on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Informations',
                'verbose_name_plural': 'Informations',
                'db_table': 'Informations',
            },
        ),
        migrations.CreateModel(
            name='Licences',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('state', models.CharField(db_column='State', max_length=20, null=True, verbose_name='State')),
                ('lnumber', models.CharField(db_column='Licence Number', max_length=20, null=True, verbose_name='Licence Number')),
                ('dissued', models.DateField(blank=True, db_column='Date Issued', default=django.utils.timezone.now, verbose_name='Date Issued')),
                ('expdate', models.DateField(blank=True, db_column='Expiration Date', default=django.utils.timezone.now, verbose_name='Expiration Date')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Licences',
                'verbose_name_plural': 'Licences',
                'db_table': 'Licences',
            },
        ),
        migrations.CreateModel(
            name='Licencesnotherexams',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lexaminations', models.FileField(blank=True, db_column='lexaminations', null=True, upload_to=app1.models.user_directory_path_licensenother, verbose_name='Add License Exam')),
                ('ecfmgcnumber', models.CharField(db_column='ecfmgcnumber', max_length=20, null=True, verbose_name='ECFMG Certificate Number')),
                ('ecfmgandfmgems', models.DateField(blank=True, db_column='ecfmgandfmgems', default=django.utils.timezone.now, verbose_name='Date Issued')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'License/Other Exams',
                'verbose_name_plural': 'License/Other Exams',
                'db_table': 'LicencesOtherExams',
            },
        ),
        migrations.CreateModel(
            name='Lifesupport',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file', models.FileField(db_column='File', upload_to=app1.models.user_directory_path_lifesupport)),
                ('uploaded_at', models.DateTimeField(auto_now_add=True, db_column='Uploaded at')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Life Support/Other Certifications',
                'db_table': 'LifeSupport',
            },
        ),
        migrations.CreateModel(
            name='Medicaleducation',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('institution', models.CharField(db_column='Institution', max_length=20, null=True)),
                ('degreeaw', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree Awarded', max_length=20, null=True, verbose_name='Degree Awarded')),
                ('degree', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree', max_length=20, null=True, verbose_name='Degree')),
                ('address', models.CharField(db_column='Address', max_length=20, null=True, verbose_name='Address')),
                ('city', models.CharField(db_column='City', max_length=20, null=True, verbose_name='City')),
                ('state', models.CharField(db_column='State', max_length=20, null=True, verbose_name='State')),
                ('zip', models.CharField(db_column='ZCode', max_length=5, null=True, verbose_name='Zip Code')),
                ('country', models.CharField(blank=True, choices=[('', [('US-VI', 'Virgin Islands, U.S.'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-IN', 'Indiana'), ('US-VT', 'Vermont'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-WA', 'Washington'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-WI', 'Wisconsin'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-WV', 'West Virginia'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-PR', 'Puerto Rico'), ('US-WY', 'Wyoming'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-SD', 'South Dakota'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-VA', 'Virginia'), ('US-TN', 'Tennessee'), ('US-NC', 'North Carolina'), ('US-TX', 'Texas'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-RI', 'Rhode Island'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-SC', 'South Carolina'), ('US-IA', 'Iowa'), ('US-UM', 'United States Minor Outlying Islands'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-UT', 'Utah'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-AR', 'Arkansas')])], db_column='Country', max_length=100, null=True, verbose_name='Country')),
                ('phone', models.CharField(db_column='Phone', max_length=10, null=True, verbose_name='Phone')),
                ('start', models.DateField(blank=True, db_column='Start', default=django.utils.timezone.now)),
                ('end', models.DateField(blank=True, db_column='End', default=django.utils.timezone.now)),
                ('graduated', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Graduated', max_length=20, null=True, verbose_name='Graduated')),
                ('date', models.DateField(blank=True, db_column='Date of G', default=django.utils.timezone.now, verbose_name='Date of Graduation')),
                ('explain', models.TextField(blank=True, db_column='Explain', null=True, verbose_name='For US/Canadian Medical School: If Medical School is greater or less than 4 years, please explain:')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Medical Education',
                'verbose_name_plural': 'Medical Education',
                'db_table': 'MedicalEducation',
            },
        ),
        migrations.CreateModel(
            name='MedicalTraining',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('institution', models.CharField(db_column='Institution', max_length=20, null=True)),
                ('degreeaw', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree Awarded', max_length=20, null=True, verbose_name='Degree Awarded')),
                ('degree', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree', max_length=20, null=True, verbose_name='Degree')),
                ('address', models.CharField(db_column='Address', max_length=20, null=True, verbose_name='Address')),
                ('city', models.CharField(db_column='City', max_length=20, null=True, verbose_name='City')),
                ('state', models.CharField(db_column='State', max_length=20, null=True, verbose_name='State')),
                ('zip', models.CharField(db_column='ZCode', max_length=5, null=True, verbose_name='Zip Code')),
                ('country', models.CharField(blank=True, choices=[('', [('US-VI', 'Virgin Islands, U.S.'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-IN', 'Indiana'), ('US-VT', 'Vermont'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-WA', 'Washington'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-WI', 'Wisconsin'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-WV', 'West Virginia'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-PR', 'Puerto Rico'), ('US-WY', 'Wyoming'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-SD', 'South Dakota'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-VA', 'Virginia'), ('US-TN', 'Tennessee'), ('US-NC', 'North Carolina'), ('US-TX', 'Texas'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-RI', 'Rhode Island'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-SC', 'South Carolina'), ('US-IA', 'Iowa'), ('US-UM', 'United States Minor Outlying Islands'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-UT', 'Utah'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-AR', 'Arkansas')])], db_column='Country', max_length=100, null=True, verbose_name='Country')),
                ('phone', models.CharField(db_column='Phone', max_length=10, null=True, verbose_name='Phone')),
                ('start', models.DateField(blank=True, db_column='Start', default=django.utils.timezone.now)),
                ('end', models.DateField(blank=True, db_column='End', default=django.utils.timezone.now)),
                ('rotating', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Rotating', max_length=20, null=True, verbose_name='Rotating')),
                ('programc', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Program C', max_length=20, null=True, verbose_name='Program Completed')),
                ('ifnot', models.TextField(blank=True, db_column='If Not', null=True, verbose_name='If Not Completed, please explain')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Medical Training',
                'verbose_name_plural': 'Medical Training',
                'db_table': 'MedicalTraining',
            },
        ),
        migrations.CreateModel(
            name='Preceptorship',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file', models.FileField(db_column='File', upload_to=app1.models.user_directory_path_preceptorship)),
                ('uploaded_at', models.DateTimeField(auto_now_add=True, db_column='Uploaded at')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Preceptorship',
                'db_table': 'Preceptorship',
            },
        ),
        migrations.CreateModel(
            name='Residency',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('institution', models.CharField(db_column='Institution', max_length=20, null=True)),
                ('speciality', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Speciality', max_length=20, null=True, verbose_name='Speciality')),
                ('gsurgery', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Degree', max_length=20, null=True, verbose_name='Degree')),
                ('pchair', models.CharField(db_column='Program Chair', max_length=20, null=True, verbose_name='Program Chair')),
                ('address', models.CharField(db_column='Address', max_length=20, null=True, verbose_name='Address')),
                ('city', models.CharField(db_column='City', max_length=20, null=True, verbose_name='City')),
                ('state', models.CharField(db_column='State', max_length=20, null=True, verbose_name='State')),
                ('zip', models.CharField(db_column='ZCode', max_length=5, null=True, verbose_name='Zip Code')),
                ('country', models.CharField(blank=True, choices=[('', [('US-VI', 'Virgin Islands, U.S.'), ('US-AS', 'American Samoa'), ('US-ND', 'North Dakota'), ('US-IN', 'Indiana'), ('US-VT', 'Vermont'), ('US-AZ', 'Arizona'), ('US-NE', 'Nebraska'), ('US-KS', 'Kansas'), ('US-WA', 'Washington'), ('US-CA', 'California'), ('US-NH', 'New Hampshire'), ('US-KY', 'Kentucky'), ('US-WI', 'Wisconsin'), ('US-CO', 'Colorado'), ('US-NJ', 'New Jersey'), ('US-LA', 'Louisiana'), ('US-WV', 'West Virginia'), ('US-CT', 'Connecticut'), ('US-NM', 'New Mexico'), ('US-MA', 'Massachusetts'), ('US-PR', 'Puerto Rico'), ('US-WY', 'Wyoming'), ('US-DC', 'District of Columbia'), ('US-NV', 'Nevada'), ('US-MD', 'Maryland'), ('US-SD', 'South Dakota'), ('US-DE', 'Delaware'), ('US-NY', 'New York'), ('US-ME', 'Maine'), ('US-FL', 'Florida'), ('US-OH', 'Ohio'), ('US-MI', 'Michigan'), ('US-GA', 'Georgia'), ('US-OK', 'Oklahoma'), ('US-MN', 'Minnesota'), ('US-VA', 'Virginia'), ('US-TN', 'Tennessee'), ('US-NC', 'North Carolina'), ('US-TX', 'Texas'), ('US-GU', 'Guam'), ('US-OR', 'Oregon'), ('US-MO', 'Missouri'), ('US-RI', 'Rhode Island'), ('US-HI', 'Hawaii'), ('US-PA', 'Pennsylvania'), ('US-MP', 'Northern Mariana Islands'), ('US-SC', 'South Carolina'), ('US-IA', 'Iowa'), ('US-UM', 'United States Minor Outlying Islands'), ('US-AK', 'Alaska'), ('US-MS', 'Mississippi'), ('US-ID', 'Idaho'), ('US-UT', 'Utah'), ('US-AL', 'Alabama'), ('US-MT', 'Montana'), ('US-IL', 'Illinois'), ('US-AR', 'Arkansas')])], db_column='Country', max_length=100, null=True, verbose_name='Country')),
                ('phone', models.CharField(db_column='Phone', max_length=10, null=True, verbose_name='Phone')),
                ('start', models.DateField(blank=True, db_column='Start', default=django.utils.timezone.now)),
                ('end', models.DateField(blank=True, db_column='End', default=django.utils.timezone.now)),
                ('programc', models.CharField(choices=[('', [('Option 1', 'Option 1'), ('Option 2', 'Option 2'), ('Option 3', 'Option 3')])], db_column='Program C', max_length=20, null=True, verbose_name='Program Completed')),
                ('ifnot', models.TextField(blank=True, db_column='If Not', null=True, verbose_name='If Not Completed, please explain')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Residency',
                'verbose_name_plural': 'Residency',
                'db_table': 'Residency',
            },
        ),
    ]
