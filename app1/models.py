from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.auth import get_user_model
from django.conf import settings
import secrets
from django.utils import timezone
from django.contrib.auth.models import User
import pycountry

# Retrieve the list of USA states directly from pycountry
USA_states = [(state.code, state.name) for state in pycountry.subdivisions.get(country_code='US')]

# Create USA_CHOICES tuple
USA_CHOICES = ("", USA_states)
COUNTRY_CHOICES = [USA_CHOICES]

# Retrieve the list of USA states directly from pycountry
USA_states = [(state.code, state.name) for state in pycountry.subdivisions.get(country_code='US')]

# Create USA_CHOICES tuple
USA_CHOICES = ("", USA_states)
COUNTRY_CHOICES = [USA_CHOICES]

DEGREE_CHOICES = [
    ("", [("Option 1", "Option 1"),
             ("Option 2", "Option 2"),("Option 3", "Option 3"), ]
             ),
]


SPECIALTIES = [
    ('neurology', 'Neurology'),
    ('cardiology', 'Cardiology'),
    ('dermatology', 'Dermatology'),
    # Shtoni specialitetet e tjera sipas nevojës
]

STATES = [
    ('Alabama', 'Alabama'),
    ('Alaska', 'Alaska'),
    ('Arizona', 'Arizona'),
    ('Arkansas', 'Arkansas'),
    ('California', 'California'),
    ('Colorado', 'Colorado'),
    ('Connecticut', 'Connecticut'),
    ('Delaware', 'Delaware'),
    ('Florida', 'Florida'),
    ('Georgia', 'Georgia'),
    ('Hawaii', 'Hawaii'),
    ('Idaho', 'Idaho'),
    ('Illinois', 'Illinois'),
    ('Indiana', 'Indiana'),
    ('Iowa', 'Iowa'),
    ('Kansas', 'Kansas'),
    ('Kentucky', 'Kentucky'),
    ('Louisiana', 'Louisiana'),
    ('Maine', 'Maine'),
    ('Maryland', 'Maryland'),
    ('Massachusetts', 'Massachusetts'),
    ('Michigan', 'Michigan'),
    ('Minnesota', 'Minnesota'),
    ('Mississippi', 'Mississippi'),
    ('Missouri', 'Missouri'),
    ('Montana', 'Montana'),
    ('Nebraska', 'Nebraska'),
    ('Nevada', 'Nevada'),
    ('New Hampshire', 'New Hampshire'),
    ('New Jersey', 'New Jersey'),
    ('New Mexico', 'New Mexico'),
    ('New York', 'New York'),
    ('North Carolina', 'North Carolina'),
    ('North Dakota', 'North Dakota'),
    ('Ohio', 'Ohio'),
    ('Oklahoma', 'Oklahoma'),
    ('Oregon', 'Oregon'),
    ('Pennsylvania', 'Pennsylvania'),
    ('Rhode Island', 'Rhode Island'),
    ('South Carolina', 'South Carolina'),
    ('South Dakota', 'South Dakota'),
    ('Tennessee', 'Tennessee'),
    ('Texas', 'Texas'),
    ('Utah', 'Utah'),
    ('Vermont', 'Vermont'),
    ('Virginia', 'Virginia'),
    ('Washington', 'Washington'),
    ('West Virginia', 'West Virginia'),
    ('Wisconsin', 'Wisconsin'),
    ('Wyoming', 'Wyoming'),
]


BOOLEAN_CHOICES = [
    ("", [("yes", "Yes"),
             ("no", "No"),]
             ),
]


class Informations(models.Model):
    user=models.OneToOneField(User,on_delete=models.CASCADE ,db_column="User")
    preffix=models.CharField(max_length = 20,blank=True,default='',choices=DEGREE_CHOICES, verbose_name='Preffix',db_column="Prefix")
    suffix=models.CharField(max_length = 20,default='',choices=DEGREE_CHOICES, verbose_name='Suffix',db_column="Sufix")
    socialsecuritynumber = models.CharField(max_length=10,blank = True,  verbose_name='Social Security Number',db_column="Social Security Number")
    preferredphonetype = models.CharField(max_length=20,blank = True,choices=DEGREE_CHOICES,  verbose_name='Preferred Phone Type',db_column="Preferred Phone Type")
    phone = models.CharField(max_length=10, blank=True, default='', verbose_name='Phone', db_column="Phone")
    otherphone=models.CharField(max_length=10,blank = True,  default='', verbose_name='Other Phone',db_column="Other Phone")
    streetno=models.CharField(max_length=100,blank = True,  default='', verbose_name='Street No',db_column="Street No")
    address=models.CharField(max_length=100,  blank = True,  default='', verbose_name='Address',db_column="Address")
    city=models.CharField(max_length=100,blank = True,  default='', verbose_name='City',db_column="City")
    stateprovince=models.CharField(max_length=100,blank = True,  default='', verbose_name='State/Province',db_column="State/Province")
    zipcode=models.CharField(max_length=5,blank = True,  default='', verbose_name='Zip Code',db_column="ZCode")
    country = models.CharField(max_length = 100,blank=True ,default='',  verbose_name='Country',db_column="Country")
    mailaddress=models.CharField(max_length=100,blank = True,  default='', verbose_name='Mailing Address',db_column="Mailing Address")
    mailcity=models.CharField(max_length=100,blank = True,  default='', verbose_name='Mailing City',db_column="Mailing City")
    mailingstateprovince=models.CharField(max_length=100,blank = True, default='', verbose_name='Mailing State/Province',db_column="Mailing State/Province")
    mailingzipcode=models.CharField(max_length=5,blank = True,  default='', verbose_name='Mailing Zip Code',db_column="Mailing Zip Code")
    mailingcountry=models.CharField(max_length=100,blank = True,  default='', verbose_name='Mailing Country',db_column="Mailing Country")
    birthcity=models.CharField(max_length=100, blank = True, default='', verbose_name='Birth City',db_column="Birth City")
    birthcountry=models.CharField(max_length=100,blank = True,  default='', verbose_name='Birth Country',db_column="Birth Country")
    birthstateprovince=models.CharField(max_length=100,blank = True, default='', verbose_name='Birth State/Province',db_column="Birth State/Province")
    npinumber=models.CharField(max_length=100,blank = True,  default='', verbose_name='NPI NUMBER',db_column="NPI Number")
    languagesspokenotherthanenglish=models.CharField(max_length=100,blank = True,  default='', verbose_name='Languages  Spoken other than English',db_column="Other Languages") #this has to be done otherwa,db_column=""y
    emergencycontactname=models.CharField(max_length=100,blank = True,  default='', verbose_name='Emergency Contact Name',db_column="Emergency Name")
    relationshiptoapplicant=models.CharField(max_length=100,blank = True,  default='', verbose_name='Relationship To Applicant',db_column="Relationship To Applicant")
    emergencycontactnumber=models.CharField(max_length=100,blank = True,  default='', verbose_name='Emergency Contact Number',db_column="Emergency Number")
    emergencycontactemail=models.CharField(max_length=100,blank = True,  default='', verbose_name='Emergency Contact Email',db_column="Emergency Email")
    primaryspeciality=models.CharField(max_length=100,blank = True,  default='', verbose_name='Primary Speciality',db_column="Primary Speciality")
    generalsurgery=models.CharField(max_length=100, blank = True, default='', verbose_name='General Surgery',db_column="General Surgery")
    secondaryspeciality=models.CharField(max_length=100,blank = True,  default='', verbose_name='Secondary Speciality',db_column="Secondary Speciality")
    abletoworkintheusa=models.BooleanField(blank=True,default=False, verbose_name='Are you able to work legally in the USA',db_column="Able to work USA")
    workauthorizationa = models.CharField(max_length=100, blank = True, default='',choices=DEGREE_CHOICES, verbose_name='Work Authorization' ,db_column="Work Auth")
    
    class Meta:
        verbose_name = 'Informations'
        verbose_name_plural = 'Informations'
        db_table = 'Informations'

    
    def __str__(self):
        return self.user.username


class Education(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE )
    institution = models.CharField(max_length=20,null = True,db_column="Institution")
    degreeaw = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Degree Awarded',db_column="Degree Awarded")
    degree = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Degree',db_column="Degree")
    address = models.CharField(max_length=20,null = True,  verbose_name='Address',db_column="Address")
    city = models.CharField(max_length=20,null = True,  verbose_name='City',db_column="City")
    state = models.CharField(max_length=20,null = True,  verbose_name='State',db_column="State")
    zip = models.CharField(max_length=5,null = True,  verbose_name='Zip Code',db_column="ZCode")
    country = models.CharField(max_length = 100,blank=True ,null=True, verbose_name='Country',db_column="Country")
    phone = models.CharField(max_length=10,null = True,  verbose_name='Phone',db_column="Phone")
    start = models.DateField(blank = True,default = timezone.now,db_column="Start")
    end = models.DateField(blank = True,default = timezone.now,db_column="End")
    graduated = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Graduated',db_column="Graduated")
    date = models.DateField(blank = True,default = timezone.now, verbose_name='Date of Graduation', db_column="Date of G")
    
    class Meta:
        verbose_name = 'Education'
        verbose_name_plural = 'Education'
        db_table = 'Education'

    

    def __str__(self):
        return self.user.username
    

class Medicaleducation(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    institution = models.CharField(max_length=20,null = True , db_column="Institution")
    degreeaw = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Degree Awarded' ,db_column="Degree Awarded")
    degree = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Degree' ,db_column="Degree")
    address = models.CharField(max_length=20,null = True,  verbose_name='Address' ,db_column="Address")
    city = models.CharField(max_length=20,null = True,  verbose_name='City', db_column="City")
    state = models.CharField(max_length=20,null = True,  verbose_name='State' ,db_column="State")
    zip = models.CharField(max_length=5,null = True,  verbose_name='Zip Code', db_column="ZCode")
    country = models.CharField(max_length = 100,blank=True ,null=True, choices=COUNTRY_CHOICES, verbose_name='Country', db_column="Country")
    phone = models.CharField(max_length=10,null = True,  verbose_name='Phone', db_column="Phone")
    start = models.DateField(blank = True,default = timezone.now , db_column="Start")
    end = models.DateField(blank = True,default = timezone.now , db_column="End")
    graduated = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Graduated', db_column="Graduated")
    date = models.DateField(blank = True,default = timezone.now, verbose_name='Date of Graduation', db_column="Date of G")
    explain = models.TextField(blank=True,null=True,verbose_name='For US/Canadian Medical School: If Medical School is greater or less than 4 years, please explain:', db_column="Explain")
    
    class Meta:
        verbose_name = 'Medical Education'
        verbose_name_plural = 'Medical Education'
        db_table = 'MedicalEducation'

    
    def __str__(self):
        return self.user.username

 
class gschool(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    institution = models.CharField(max_length=20,null = True,db_column="Institution")
    degreeaw = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Degree Awarded',db_column="Degree Awarded")
    degree = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Degree',db_column="Degree")
    address = models.CharField(max_length=20,null = True,  verbose_name='Address',db_column="Address")
    city = models.CharField(max_length=20,null = True,  verbose_name='City',db_column="City")
    state = models.CharField(max_length=20,null = True,  verbose_name='State',db_column="State")
    zip = models.CharField(max_length=5,null = True,  verbose_name='Zip Code',db_column="ZCode")
    country = models.CharField(max_length = 100,blank=True ,null=True,  verbose_name='Country',db_column="Country")
    phone = models.CharField(max_length=10,null = True,  verbose_name='Phone',db_column="Phone")
    start = models.DateField(blank = True,default = timezone.now,db_column="Start")
    end = models.DateField(blank = True,default = timezone.now,db_column="End")
    graduated = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Graduated',db_column="Graduated")
    date = models.DateField(blank = True,default = timezone.now, verbose_name='Date of Graduation',db_column="Date of G")
     
    class Meta:
        verbose_name = 'Other Graduate School'
        verbose_name_plural = 'Other Graduate School'
        db_table = 'OtherGraduateSchool'

    
    def __str__(self):
        return self.user.username
    

class MedicalTraining(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    institution = models.CharField(max_length=20,null = True,db_column="Institution")
    degreeaw = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Degree Awarded',db_column="Degree Awarded")
    degree = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Degree',db_column="Degree")
    address = models.CharField(max_length=20,null = True,  verbose_name='Address',db_column="Address")
    city = models.CharField(max_length=20,null = True,  verbose_name='City',db_column="City")
    state = models.CharField(max_length=20,null = True,  verbose_name='State',db_column="State")
    zip = models.CharField(max_length=5,null = True,  verbose_name='Zip Code',db_column="ZCode")
    country = models.CharField(max_length = 100,blank=True ,null=True, choices=COUNTRY_CHOICES, verbose_name='Country',db_column="Country")
    phone = models.CharField(max_length=10,null = True,  verbose_name='Phone',db_column="Phone")
    start = models.DateField(blank = True,default = timezone.now,db_column="Start")
    end = models.DateField(blank = True,default = timezone.now,db_column="End")
    rotating = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Rotating',db_column="Rotating")
    programc = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Program Completed',db_column="Program C")
    ifnot = models.TextField(blank=True,null=True,verbose_name='If Not Completed, please explain',db_column="If Not")
    
    
    class Meta:
        verbose_name = 'Medical Training'
        verbose_name_plural = 'Medical Training'
        db_table = 'MedicalTraining'

    
    def __str__(self):
        return self.user.username
    

class Residency(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    institution = models.CharField(max_length=20,null = True,db_column="Institution")
    speciality = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Speciality',db_column="Speciality")
    gsurgery = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Degree',db_column="Degree")
    pchair = models.CharField(max_length=20,null = True,  verbose_name='Program Chair',db_column="Program Chair")
    address = models.CharField(max_length=20,null = True,  verbose_name='Address',db_column="Address")
    city = models.CharField(max_length=20,null = True,  verbose_name='City',db_column="City")
    state = models.CharField(max_length=20,null = True,  verbose_name='State',db_column="State")
    zip = models.CharField(max_length=5,null = True,  verbose_name='Zip Code',db_column="ZCode")
    country = models.CharField(max_length = 100,blank=True ,null=True, choices=COUNTRY_CHOICES, verbose_name='Country',db_column="Country")
    phone = models.CharField(max_length=10,null = True,  verbose_name='Phone',db_column="Phone")
    start = models.DateField(blank = True,default = timezone.now,db_column="Start")
    end = models.DateField(blank = True,default = timezone.now,db_column="End")
    programc = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Program Completed',db_column="Program C")
    ifnot = models.TextField(blank=True,null=True,verbose_name='If Not Completed, please explain',db_column="If Not")
    
    
    class Meta:
        verbose_name = 'Residency'
        verbose_name_plural = 'Residency'
        db_table = 'Residency'


    
    def __str__(self):
        return self.user.username
    


class Fellowship(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    institution = models.CharField(max_length=20,null = True,db_column="Institution")
    speciality = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Speciality',db_column="Speciality")
    gsurgery = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Degree',db_column="Degree")
    pchair = models.CharField(max_length=20,null = True,  verbose_name='Program Chair',db_column="Program Chair")
    address = models.CharField(max_length=20,null = True,  verbose_name='Address',db_column="Address")
    city = models.CharField(max_length=20,null = True,  verbose_name='City',db_column="City")
    state = models.CharField(max_length=20,null = True,  verbose_name='State',db_column="State")
    zip = models.CharField(max_length=5,null = True,  verbose_name='Zip Code',db_column="ZCode")
    country = models.CharField(max_length = 100,blank=True ,null=True, choices=COUNTRY_CHOICES, verbose_name='Country',db_column="")
    phone = models.CharField(max_length=10,null = True,  verbose_name='Phone',db_column="Phone")
    start = models.DateField(blank = True,default = timezone.now,db_column="Start")
    end = models.DateField(blank = True,default = timezone.now,db_column="End")
    programc = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Program Completed',db_column="Pprogram C")
    ifnot = models.TextField(blank=True,null=True,verbose_name='If Not Completed, please explain',db_column="If not")
    
    
    class Meta:
        verbose_name = 'Fellowship'
        verbose_name_plural = 'Fellowship'
        db_table = 'Fellowship'

    
    def __str__(self):
        return self.user.username
    


def user_directory_path(instance, filename, subdirectory):
    
    return f'documents/{subdirectory}/user_{instance.user.id}/{filename}'

def user_directory_path_preceptorship(instance, filename):
    return user_directory_path(instance, filename, 'preceptorship')

def user_directory_path_fifthpathway(instance, filename):
    return user_directory_path(instance, filename, 'fifthpathway')

def user_directory_path_lifesupport(instance, filename):
    return user_directory_path(instance, filename, 'lifesupportandcertifications')

def user_directory_path_licensenother(instance, filename):
    return user_directory_path(instance, filename, 'licensenotherexams')



class Preceptorship(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    file = models.FileField(upload_to=user_directory_path_preceptorship,db_column="File")
    uploaded_at = models.DateTimeField(auto_now_add=True,db_column="Uploaded at")
    
    def __str__(self):
        return f"Preceptorship uploaded at {self.uploaded_at}"

    class Meta:
        verbose_name_plural = "Preceptorship"
        db_table = 'Preceptorship'




class Fifthpathway(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    file = models.FileField(upload_to=user_directory_path_fifthpathway,db_column="File")
    uploaded_at = models.DateTimeField(auto_now_add=True,db_column="Uploaded at")

    def __str__(self):
        return f"Fifth Pathway uploaded at {self.uploaded_at}"

    class Meta:
        verbose_name_plural = "Fifth Pathway"
        db_table = 'FifthPathway'


class Boardcertifications(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    degree = models.CharField(max_length=20,null = True, choices=DEGREE_CHOICES,  verbose_name='Degree',db_column="Degree")
    boardtype = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Board Type',db_column="Board Type")
    ofspeciality = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Of (Speciality)',db_column="Of Speciality")
    withcertification = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='With Certification In (if applicable)',db_column="With Certification")
    certified = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Certified',db_column="Certified")
    cdate = models.DateField(blank = True,default = timezone.now,verbose_name='Certified Date',db_column="Certified Date")
    recertified = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='Recertified',db_column="Recertified")
    rcdate = models.DateField(blank = True,default = timezone.now,verbose_name='Recertified Date',db_column="Recertified Date")
    expdate = models.DateField(blank = True,default = timezone.now,verbose_name='Expiration Date',db_column="Expiration Date")
    lftmcert = models.CharField(max_length=20, choices=BOOLEAN_CHOICES,verbose_name='Lifetime Certification?',db_column="Lifetime Cert")
    ifnotcert = models.CharField(max_length=20,null = True,choices=DEGREE_CHOICES,  verbose_name='If not certified, have you been accepted to take a specialty examination?',db_column="If not cert")
    datesch = models.DateField(blank = True,default = timezone.now,verbose_name='Date Scheduled',db_column="Date Scheduled")
    ifnot = models.TextField(blank=True,null=True,verbose_name='If Not certified, how many times have you taken a specialty board and failed to pass?',db_column="If not")
    
    
    class Meta:
        verbose_name = 'Board Certifications'
        verbose_name_plural = 'Board Certifications'
        db_table = 'BoardCertifications'

    
    def __str__(self):
        return self.user.username
    

class Lifesupport(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    file = models.FileField(upload_to=user_directory_path_lifesupport,db_column="File")
    uploaded_at = models.DateTimeField(auto_now_add=True,db_column="Uploaded at")

    def __str__(self):
        return f"Life Support/Other Certifications uploaded at {self.uploaded_at}"

    class Meta:
        verbose_name_plural = "Life Support/Other Certifications"
        db_table = 'LifeSupport'


class Licences(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    state = models.CharField(max_length=20,null = True,  verbose_name='State',db_column="State")
    lnumber = models.CharField(max_length=20,null = True,  verbose_name='Licence Number',db_column="Licence Number")
    dissued = models.DateField(blank = True,default = timezone.now,verbose_name='Date Issued',db_column="Date Issued")
    expdate = models.DateField(blank = True,default = timezone.now,verbose_name='Expiration Date',db_column="Expiration Date")
    

    class Meta:
        verbose_name = 'Licences'
        verbose_name_plural = 'Licences'
        db_table = 'Licences'

    
    def __str__(self):
        return self.user.username
    

class Dearegistration(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    state = models.CharField(max_length=20,null = True,  verbose_name='State',db_column="State")
    rnumber = models.CharField(max_length=20,null = True,  verbose_name='Registration Number',db_column="Reg Number")
    dissued = models.DateField(blank = True,default = timezone.now,verbose_name='Date Issued',db_column="Dissued")
    expdate = models.DateField(blank = True,default = timezone.now,verbose_name='Expiration Date',db_column="Expdate")
    ifu = models.TextField(blank=True,null=True,verbose_name='If you do not currently possess a DEA Registration, please explain here:',db_column="IFU")
    

    class Meta:
        verbose_name = 'DEA Registration'
        verbose_name_plural = 'DEA Registration'
        db_table = 'DEARegistration'

    
    def __str__(self):
        return self.user.username
    

class Licencesnotherexams(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    lexaminations = models.FileField(upload_to=user_directory_path_licensenother, null=True, blank=True, verbose_name='Add License Exam',db_column="lexaminations")
    ecfmgcnumber = models.CharField(max_length=20,null = True,  verbose_name='ECFMG Certificate Number',db_column="ecfmgcnumber")
    ecfmgandfmgems = models.DateField(blank = True,default = timezone.now,verbose_name='Date Issued',db_column="ecfmgandfmgems")



    class Meta:
        verbose_name = 'License/Other Exams'
        verbose_name_plural = 'License/Other Exams'
        db_table = 'LicencesOtherExams'

    
    def __str__(self):
        return self.user.username


class Address(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    street_number = models.CharField(max_length=255, blank=True, null=True,db_column="Street Number")
    route = models.CharField(max_length=255, blank=True, null=True,db_column="Route")
    locality = models.CharField(max_length=255, blank=True, null=True,db_column="Locality")
    administrative_area_level_1 = models.CharField(max_length=255, blank=True, null=True,db_column="Administrative Area L1")
    postal_code = models.CharField(max_length=20, blank=True, null=True,db_column="Postal Code")
    country = models.CharField(max_length=255, blank=True, null=True,db_column="Country")

    def __str__(self):
        return f"{self.street_number}, {self.route}, {self.locality}, {self.administrative_area_level_1}, {self.postal_code}, {self.country}"


class hospitals(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    hospitalid = models.CharField(max_length=20,null = True, default='', verbose_name='Hospital ID',db_column="Hospital ID")
    name = models.CharField(max_length=20,null = True,  default='',verbose_name='Hospital Name',db_column="Hospital Name")
    openjobs = models.CharField(max_length=20,null = True, default='', verbose_name='Open Jobs',db_column="Open Jobs")
    active = models.CharField(max_length=20,null = True,default='',  verbose_name='Active Jobs',db_column="Active Jobs")
    historical = models.CharField(max_length=20,null = True,default='',  verbose_name='Filled Historical Jobs',db_column="Filled Historical Jobs")

    

    class Meta:
        verbose_name = 'Hospitals'
        verbose_name_plural = 'Hospitals'
        db_table = 'Hospitals'

    
    def __str__(self):
        return self.user.username
    

class Agreements(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE )
    docid = models.CharField(max_length=20,null = True, default='', verbose_name='Docid',db_column="Docid")
    docidnm = models.CharField(max_length=20,null = True,  default='',verbose_name='DocNm',db_column="DocNm")
    openjobs = models.CharField(max_length=20,null = True, default='', verbose_name='Open Jobs',db_column="Open Jobs")
    active = models.CharField(max_length=20,null = True,default='',  verbose_name='Active Jobs',db_column="Active Jobs")
    historical = models.CharField(max_length=20,null = True,default='',  verbose_name='Filled Historical Jobs',db_column="Filled Historical Jobs")
    startdate = models.DateField(blank = True,default = timezone.now,verbose_name='Start Date',db_column="Start Date")
    expdate = models.DateField(blank = True,default = timezone.now,verbose_name='Expiration Date',db_column="Expdate")
    

    class Meta:
        verbose_name = 'Agreements'
        verbose_name_plural = 'Agreements'
        db_table = 'Agreements'

    
    def __str__(self):
        return self.user.username