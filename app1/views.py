from django.shortcuts import render,redirect
from django.contrib.auth.models import User,auth
from django.contrib import messages
from django.contrib.auth.views import PasswordResetView, PasswordResetDoneView, PasswordResetConfirmView, PasswordResetCompleteView
from django.urls import reverse_lazy
from django.views import View
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from django.utils.encoding import force_bytes
from django.contrib.auth.tokens import default_token_generator
from django.contrib.sites.shortcuts import get_current_site
from django.urls import reverse
from django.core.mail import EmailMultiAlternatives
from django.utils.html import strip_tags
from django.contrib.auth import authenticate, login as auth_login  
from django.contrib.auth.decorators import login_required
from .models import Informations,Education,gschool,Medicaleducation,STATES,COUNTRY_CHOICES
from .forms import EducationForm,gschoolForm,MedicaleducationForm
from .models import Informations
from django.shortcuts import render, redirect
from django.core.exceptions import ObjectDoesNotExist
from .models import Informations
from .models import COUNTRY_CHOICES 
from .models import Education  # Import your model class


@login_required
def medical_education_info(request):
    try:
        medical_education = Medicaleducation.objects.get(user=request.user)
    except Medicaleducation.DoesNotExist:
        medical_education = Medicaleducation(user=request.user)
        medical_education.save()

    if request.method == 'POST':
        medical_education.institution = request.POST.get('institution', '')
        medical_education.degreeaw = request.POST.get('degreeaw', '')
        medical_education.degree = request.POST.get('degree', '')
        medical_education.address = request.POST.get('address', '')
        medical_education.city = request.POST.get('city', '')
        medical_education.state = request.POST.get('state', '')
        medical_education.zip = request.POST.get('zip', '')
        medical_education.country = request.POST.get('country', '')
        medical_education.phone = request.POST.get('phone', '')
        medical_education.start = request.POST.get('start', '')
        medical_education.end = request.POST.get('end', '')
        medical_education.graduated = request.POST.get('graduated', '')
        medical_education.date = request.POST.get('date', '')  
        medical_education.explain = request.POST.get('explain', '')
        medical_education.save()
        return redirect('medical-education-info')
    

    return render(request, 'milestone2/medical_education.html', {'medical_education': medical_education})


# @login_required
from django.shortcuts import render, redirect
from django.core.exceptions import ObjectDoesNotExist

def graduate_school_info(request):
    try:
        # Try to retrieve the gschool object associated with the user
        graduate_school = gschool.objects.get(user=request.user)
    except ObjectDoesNotExist:
        # If no gschool object exists for the user, create a new one
        graduate_school = gschool(user=request.user)

    if request.method == 'POST':
        # Update the attributes of the graduate_school object with the form data
        graduate_school.institution = request.POST.get('institution', '')
        graduate_school.degreeaw = request.POST.get('degreeaw', '')
        graduate_school.degree = request.POST.get('degree', '')
        graduate_school.address = request.POST.get('address', '')
        graduate_school.city = request.POST.get('city', '')
        graduate_school.state = request.POST.get('state', '')
        graduate_school.zip = request.POST.get('zip', '')
        graduate_school.country = request.POST.get('country', '')
        graduate_school.phone = request.POST.get('phone', '')
        graduate_school.start = request.POST.get('start', '')
        graduate_school.end = request.POST.get('end', '')
        graduate_school.graduated = request.POST.get('graduated', '')
        graduate_school.date = request.POST.get('date', '')
        # Save the updated or newly created graduate_school object
        graduate_school.save()
        # Redirect to the same page after processing the form data
        return redirect('graduate-school-info')
    
    # Render the graduate_school.html template with the graduate_school object
    return render(request, 'milestone2/graduate_school.html', {'graduate_school': graduate_school})



@login_required
def personal_information(request):
    try:
        info = Informations.objects.get(user=request.user)
    except Informations.DoesNotExist:
        info = Informations(user=request.user)
        info.save()

    if request.method == 'POST':
        info.preffix = request.POST.get('preffix', info.preffix)
        info.suffix = request.POST.get('suffix', info.suffix)
        info.socialsecuritynumber = request.POST.get('socialsecuritynumber', info.socialsecuritynumber)
        info.phone = request.POST.get('phone', info.phone)
        info.preferredphonetype=request.POST.get('preferredphonetype', info.preferredphonetype)
        info.otherphone = request.POST.get('otherphone', info.otherphone)
        info.streetno = request.POST.get('streetno',info.streetno)
        info.address = request.POST.get('address', info.address)
        info.city = request.POST.get('city', info.city)
        info.stateprovince = request.POST.get('stateprovince', info.stateprovince)
        info.zipcode = request.POST.get('zipcode', info.zipcode)
        info.country = request.POST.get('country', info.country)
        info.mailaddress = request.POST.get('mailaddress', info.mailaddress)
        info.mailcity = request.POST.get('mailcity', info.mailcity)
        info.mailingstateprovince = request.POST.get('mailingstateprovince', info.mailingstateprovince)
        info.mailingzipcode = request.POST.get('mailingzipcode', info.mailingzipcode)
        info.mailingcountry = request.POST.get('mailingcountry', info.mailingcountry)
        info.birthcity = request.POST.get('birthcity', info.birthcity)
        info.birthcountry = request.POST.get('birthcountry', info.birthcountry)
        info.birthstateprovince = request.POST.get('birthstateprovince', info.birthstateprovince)
        info.npinumber = request.POST.get('npinumber', info.npinumber)
        info.languagesspokenotherthanenglish = request.POST.get('languagesspokenotherthanenglish', info.languagesspokenotherthanenglish)
        info.emergencycontactname = request.POST.get('emergencycontactname', info.emergencycontactname)
        info.relationshiptoapplicant = request.POST.get('relationshiptoapplicant', info.relationshiptoapplicant)
        info.emergencycontactnumber = request.POST.get('emergencycontactnumber', info.emergencycontactnumber)
        info.emergencycontactemail = request.POST.get('emergencycontactemail', info.emergencycontactemail)
        info.primaryspeciality = request.POST.get('primaryspeciality', info.primaryspeciality)
        info.generalsurgery = request.POST.get('generalsurgery', info.generalsurgery)
        info.secondaryspeciality = request.POST.get('secondaryspeciality', info.secondaryspeciality)
        info.abletoworkintheusa = request.POST.get('abletoworkintheusa', info.abletoworkintheusa) in ['on', 'true', '1']
        info.workauthorizationa = request.POST.get('workauthorizationa', info.workauthorizationa)
        info.save()
        return redirect('personal-info')
    

    return render(request, 'milestone2/informations.html', {'info': info})

@login_required
def education_info(request):
    try:
        education = Education.objects.get(user=request.user)
    except Education.DoesNotExist:
        education = Education(user=request.user)
        education.save()

    if request.method == 'POST':
        education.institution = request.POST.get('institution', '')
        education.degreeaw = request.POST.get('degreeaw', '')
        education.degree = request.POST.get('degree', '')
        education.address = request.POST.get('address', '')
        education.city = request.POST.get('city', '')
        education.state = request.POST.get('state', '')
        education.zip = request.POST.get('zip', '')
        education.country = request.POST.get('country', '')
        education.phone = request.POST.get('phone', '')
        education.start = request.POST.get('start', '')
        education.end = request.POST.get('end', '')
        education.graduated = request.POST.get('graduated', '')
        education.save()
        return redirect('education-info')

    return render(request, 'milestone2/education.html', {'education': education})



# def calculate_percentage_filled():
#     # Get total number of fields in the model
#     total_fields = len(Education._meta.get_fields())  # Assuming MyModel is your model class
    
#     # Get number of filled fields in the model
#     filled_fields = Education.objects.exclude(field_name__isnull=True).count()  # Replace field_name with actual field name
    
#     # Calculate percentage filled
#     if total_fields > 0:
#         percentage_filled = (filled_fields / total_fields) * 100
#     else:
#         percentage_filled = 0
    
#     return percentage_filled

# Example usage:

# def count(request):
#         user_info = Education.objects.get(user=request.user)

#         a1 = user_info.institution 
#         a2 = user_info.degreeaw 
#         a3 = user_info.degree 
#         a4 = user_info.address 
#         a5 = user_info.city 
#         a6 = user_info.state
#         a7 = user_info.zip
#         a8 = user_info.country
#         a9 = user_info.phone 
#         a10 = user_info.start
#         a11 = user_info.end
#         a12 = user_info.graduated 
#         a13 = user_info.date 

#         lista = [a1,a2,a3,a4,a5,a6,a7, a8, a9 ,a10 ,a11 ,a12, a13]

#         null_count = lista.count(None)

#         return null_count

# def count(request, model):
#     user_info = model.objects.get(user=request.user)
    
#     # Get all fields of the model
#     fields = model._meta.fields
    
#     # Count the number of null values for each field
#     null_count = sum(1 for field in fields if getattr(user_info, field.name) is None)
    
#     return null_count

def count(request, model):
    user_info = model.objects.filter(user=request.user).first()  # Use filter() and first() instead of get()
    
    if user_info is None:
        return 0
    
    # Get all fields of the model
    fields = model._meta.fields
    
    # Count the number of null values for each field
    # null_count = sum(1 for field in fields if getattr(user_info, field.name) is None)
    null_count = sum(1 for field in fields if getattr(user_info, field.name) is None or (isinstance(getattr(user_info, field.name), str) and (getattr(user_info, field.name) == "" or getattr(user_info, field.name).isspace())))
    return null_count


def index(request):
    if request.user.is_authenticated:

        logged_in_user = request.user
        users = User.objects.all()[1:]
        logged_in_user = request.user

        total_fields = 10 
        

        # filled_fields = Education.objects.filter(user=request.user).exclude(
        #     degree__isnull=True,
        #     institution__isnull=True,
        #     start__isnull=True,
        #     end__isnull=True
        # ).count()
        
        # if total_fields > 0:
        #     percentage_filled = (filled_fields / total_fields) * 100
        # else:
        #     percentage_filled = 0
        
        context = {
            "logged_in_user": logged_in_user,
            "edu_percentage_filled": count(request, Education),
            "medical_percentage_filled": count(request, Medicaleducation),
            "gschool_percentage_filled": count(request, gschool),
            "users":users,
        }
        return render(request, "milestone2/index.html", context)
    else:
        return redirect('login')




# def index(request):
#     if request.user.is_authenticated:
#         logged_in_user = request.user
#         users = User.objects.all()[1:]
#         logged_in_user = request.user
        
#         context = {
#             "logged_in_user": logged_in_user,
#             "users":users,
#         }
#         return render(request, "milestone2/index.html", context)
#     else:
#         return redirect('login')
#Handle the registration,confirmation link via email
def register(request):
    if request.method == "POST":
        agree_checked = request.POST.get('agree', True)
        if not agree_checked:
            messages.error(request, 'You must agree to the terms of service.')
            return redirect('register')

        # username = request.POST.get('username', '')
        email = request.POST.get('email', '')
        password = request.POST.get('password', '')
        password2 = request.POST.get('password2', '')


        if password != password2:
            messages.error(request, 'Passwords do not match.')
            return redirect('login')
        if User.objects.filter(email=email).exists():
            messages.error(request, 'Email is already registered.')
            return redirect('login')


        # Generate a unique username
        base_username = email.split('@')[0]
        username = base_username
        counter = 1
        while User.objects.filter(username=username).exists():
            username = f"{base_username}{counter}"
            counter += 1
        # if User.objects.filter(username=username).exists():
        #     messages.error(request, 'Username is already taken.')
        #     return redirect("login")

        user = User.objects.create_user(username=username, password=password, email=email)
        user.is_active = False
        user.save()

        # Generate token for email confirmation
        token = default_token_generator.make_token(user)
        uid = urlsafe_base64_encode(force_bytes(user.pk))
        domain = get_current_site(request).domain
        confirm_url = reverse('confirm_email', kwargs={'uidb64': uid, 'token': token})
        subject = "Confirm your email"

        # Render email template with confirmation link
        message = render_to_string('authentication/confirmation_email.html', {
            'user': user,
            'domain': domain,
            'confirm_url': confirm_url,
        })

        # Send email with HTML content
        email = EmailMultiAlternatives(subject, strip_tags(message), to=[email])
        email.attach_alternative(message, "text/html")
        email.send()

        messages.success(request, 'Registration successful. Please check your email to confirm.')
        return redirect('login')

    return render(request, 'authentication/register.html')  # Assuming you have a registration form template


from django.utils.encoding import force_bytes, force_str

# Handle the process of email confirmation
def confirm_email(request, uidb64, token):
    try:
        uid = force_str(urlsafe_base64_decode(uidb64))
        user = User.objects.get(pk=uid)
    except (TypeError, ValueError, OverflowError, User.DoesNotExist):
        user = None

    if user is not None and default_token_generator.check_token(user, token):
        user.is_active = True
        user.save()
        messages.success(request, 'Email confirmed successfully.')
        return redirect('login')
    else:
        messages.error(request, 'Invalid confirmation link.')
        return redirect('login')



def update_info(request):
    try:
        user_info = Informations.objects.get(user=request.user)
    except Informations.DoesNotExist:
        user_info = None

    if request.method == 'POST':
        form = UserUpdateForm(request.POST, instance=user_info)
        if form.is_valid():
            user_info = form.save(commit=False)
            user_info.user = request.user
            user_info.save()
            return redirect('index')  # Redirect after saving
    else:
        form = UserUpdateForm(instance=user_info)

    context = {
        "user": request.user,
        'user_info': user_info,
        "form": form,
        "COUNTRY_CHOICES":COUNTRY_CHOICES,
    }
    return render(request, 'milestone2/informations/update_info.html', context)

from .forms import UserUpdateForm
def update_data(request):
    if request.method == 'POST':
        # Retrieve the form data
        address = request.POST.get('address', '')  # Provide a default value if the field is empty
        # address = request.POST['address']  # Provide a default value if the field is empty

        city = request.POST.get('city')  # Provide a default value if the field is empty

        prefix = request.POST.get('prefix')  # Provide a default value if the field is empty
        
        sufix = request.POST.get('sufix')  # Provide a default value if the field is empty
        socialsecuritynumber = request.POST.get('socialsecuritynumber','')  # Provide a default value if the field is empty
        preferredphonetype = request.POST.get('preferredphonetype','')  # Provide a default value if the field is empty
        phone = request.POST.get('phone')  # Provide a default value if the field is empty
        otherphone = request.POST.get('otherphone')  # Provide a default value if the field is empty
        address = request.POST.get('address')  # Provide a default value if the field is empty
        stateprovince = request.POST.get('stateprovince')  # Provide a default value if the field is empty
        zipcode = request.POST.get('zipcode')  # Provide a default value if the field is empty
        country = request.POST.get('country')  # Provide a default value if the field is empty
        mailaddress = request.POST.get('mailaddress')  # Provide a default value if the field is empty
        mailcity = request.POST.get('mailcity')  # Provide a default value if the field is empty
        mailingstateprovince = request.POST.get('mailingstateprovince')  # Provide a default value if the field is empty
        mailingzipcode = request.POST.get('mailingzipcode') 
        mailingcountry = request.POST.get('mailingcountry')  # Provide a default value if the field is empty
        birthcity = request.POST.get('birthcity')  # Provide a default value if the field is empty
        birthcountry = request.POST.get('birthcountry')  # Provide a default value if the field is empty
        birthstateprovince = request.POST.get('birthstateprovince')  # Provide a default value if the field is empty
        npinumber = request.POST.get('npinumber')  # Provide a default value if the field is empty
        languagesspokenotherthanenglish = request.POST.get('languagesspokenotherthanenglish')  # Provide a default value if the field is empty
        emergencycontactname = request.POST.get('emergencycontactname')  # Provide a default value if the field is empty
        relationshiptoapplicant = request.POST.get('relationshiptoapplicant')  # Provide a default value if the field is empty
        emergencycontactnumber = request.POST.get('emergencycontactnumber')  # Provide a default value if the field is empty
        emergencycontactemail = request.POST.get('emergencycontactemail')  # Provide a default value if the field is empty
        primaryspeciality = request.POST.get('primaryspeciality')  # Provide a default value if the field is empty
        generalsurgery = request.POST.get('generalsurgery')  # Provide a default value if the field is empty
        secondaryspeciality = request.POST.get('secondaryspeciality')  # Provide a default value if the field is empty
        abletoworkintheusa = request.POST.get('abletoworkintheusa', False)  # Provide a default value if the field is not submitted
        workauthorizationa = request.POST.get('workauthorizationa')  # Provide a default value if the field is empty
        
        # Get the current user
        user = request.user
        

        if len(str(phone)) >10:
            messages.error(request, "Social security number must be 10 characters or less.")
            return redirect('update_info')
        if len(str(zipcode)) >5:
            messages.error(request, "Zip Code must be 5 characters.")
            return redirect('update_info')
        if len(str(socialsecuritynumber)) >10:
            messages.error(request, "Social security number must be 10 characters or less.")
            return redirect('update_info')
        if len(str(phone)) >10:
            messages.error(request, "Social security number must be 10 characters or less.")
            return redirect('update_info')

        # Retrieve or create Informations object for the user
        user_info, created = Informations.objects.get_or_create(user=user)
        
        # Update the fields
        user_info.address = address
        user_info.phone = phone
        user_info.city = city
        user_info.preffix = prefix
        user_info.suffix = sufix
        user_info.socialsecuritynumber = socialsecuritynumber
        user_info.preferredphonetype = preferredphonetype
        user_info.phone = phone
        user_info.otherphone = otherphone
        user_info.address = address
        user_info.stateprovince = stateprovince
        user_info.zipcode = zipcode
        user_info.country = country
        user_info.mailaddress = mailaddress
        user_info.mailcity = mailcity
        user_info.mailingstateprovince = mailingstateprovince
        user_info.mailingzipcode = mailingzipcode
        user_info.mailingcountry = mailingcountry
        user_info.birthcity = birthcity
        user_info.birthcountry = birthcountry
        user_info.birthstateprovince = birthstateprovince
        user_info.npinumber = npinumber
        user_info.languagesspokenotherthanenglish = languagesspokenotherthanenglish
        user_info.emergencycontactname = emergencycontactname
        user_info.relationshiptoapplicant = relationshiptoapplicant
        user_info.emergencycontactnumber = emergencycontactnumber
        user_info.emergencycontactemail = emergencycontactemail
        user_info.primaryspeciality = primaryspeciality
        user_info.generalsurgery = generalsurgery
        user_info.secondaryspeciality = secondaryspeciality
        user_info.abletoworkintheusa = abletoworkintheusa
        user_info.workauthorizationa = workauthorizationa

        user_info.save()



        form = UserUpdateForm(request.POST, instance=request.user)
        if form.is_valid():
            form.save()
        
        messages.success(request,'Successfully updated !')
        # Redirect to a success page or any other desired page
        return redirect('update_info')
    else:
        # Handle cases where the request method is not POST
        return redirect('index')


#Handle the user login
def login(request):
    if request.method == "POST":
        identifier = request.POST.get('username', '')
        password = request.POST.get('password', '')
        if '@' in identifier:
            try:
                user = User.objects.get(email=identifier)
                username = user.username
            except User.DoesNotExist:
                username = None
        else:
            username = identifier
            #Nice a bon edhe username edhe email ? popo dyjat /GG A ja boj push edhe shut down pc qe meniher

        user = authenticate(request, username=username, password=password)
        if user is not None:
            if user.is_active:
                auth_login(request, user)
                return redirect('index')
            else:
                messages.error(request, 'Please confirm your email address first.')
                return redirect('login')
        else:
            messages.error(request, 'Invalid username or password.')
            return redirect('login')

    return render(request, 'authentication/login.html')

#Does the logout of user
def logout(request):
    auth.logout(request)
    return redirect('login')


#Handle the Forgot My Password proccess
class CustomPasswordResetView(PasswordResetView):
    template_name = 'password_reset_form.html'
    email_template_name = 'password_reset_email.html'
    #subject_template_name = 'password_reset_subject.txt'
    success_url = reverse_lazy('password_reset_done')


class CustomPasswordResetDoneView(PasswordResetDoneView):
    template_name = 'password_reset_done.html'

class CustomPasswordResetConfirmView(PasswordResetConfirmView):
    template_name = 'password_reset_confirm.html'
    success_url = reverse_lazy('password_reset_complete')

class CustomPasswordResetCompleteView(PasswordResetCompleteView):
    template_name = 'password_reset_complete.html'

class ForgotMyPasswordView(View):
    def get(self, request):
        return render(request, 'password_reset_form.html')

    def post(self, request):
        return CustomPasswordResetView.as_view()(request)

forgotmypassword = ForgotMyPasswordView.as_view()


from .models import Education

from django.core.exceptions import ObjectDoesNotExist

from .models import COUNTRY_CHOICES ,DEGREE_CHOICES



from .forms import UserUpdateForm

def update_edu(request):
    try:
        user_info = Education.objects.get(user=request.user)
    except Education.DoesNotExist:
        user_info = None

    if request.method == 'POST':
        form = UserUpdateForm(request.POST, instance=user_info)
        if form.is_valid():
            user_info = form.save(commit=False)
            user_info.user = request.user
            user_info.save()
            return redirect('index')  # Kthehuni në faqen fillestare pasi të ruhen të dhënat
    else:
        form = UserUpdateForm(instance=user_info)

    context = {
        "user": request.user,
        'user_info': user_info,
        "form": form,
        "COUNTRY_CHOICES": COUNTRY_CHOICES,
        "DEGREE_CHOICES": DEGREE_CHOICES,
    }
    return render(request, 'milestone2/update_info_Education.html', context)


from .forms import UserUpdateForm
def edu_data(request):
    if request.method == 'POST':
        # Retrieve the form data
        institution = request.POST.get('institution', '')  # Provide a default value if the field is empty
        # address = request.POST['address']  # Provide a default value if the field is empty

        degreeaw = request.POST.get('degreeaw')  # Provide a default value if the field is empty

        degree = request.POST.get('degree')  # Provide a default value if the field is empty
        
        address = request.POST.get('address')  # Provide a default value if the field is empty
        city = request.POST.get('city','')  # Provide a default value if the field is empty
        zip = request.POST.get('zip','')  # Provide a default value if the field is empty
        country = request.POST.get('country')  # Provide a default value if the field is empty
        phone = request.POST.get('phone')  # Provide a default value if the field is empty
        start = request.POST.get('start')  # Provide a default value if the field is empty
        end = request.POST.get('end')  # Provide a default value if the field is empty
        graduated = request.POST.get('graduated')  # Provide a default value if the field is empty
        date = request.POST.get('date')  # Provide a default value if the field is empty
        state = request.POST.get('state')  # Provide a default value if the field is empty
    
        # Get the current user
        user = request.user
        user_info, created = Education.objects.get_or_create(user=user)
        
        # Update the fields
        user_info.institution = institution
        user_info.degreeaw = degreeaw
        user_info.degree = degree
        user_info.address = address
        user_info.city = city
        user_info.state = state
        user_info.zip = zip
        user_info.country = country
        user_info.phone = phone
        user_info.start = start
        user_info.end = end
        user_info.graduated = graduated
        user_info.date = date

        user_info.save()



        form = UserUpdateForm(request.POST, instance=request.user)
        if form.is_valid():
            form.save()
        
        messages.success(request,'Successfully updated !')
        # Redirect to a success page or any other desired page
        return redirect('update-edu')
    else:
        # Handle cases where the request method is not POST
        return redirect('index')
    


def autocomplete_view(request):
    return render(request, 'autocomplete.html')


# views.py
from .forms import UserUpdateForm
from .models import User



from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.models import User
from .models import UserProfile

# views.py
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.models import User
from .models import UserProfile

def user_data(request, id):
    user_instance = get_object_or_404(User, id=id)
    user_profile, created = UserProfile.objects.get_or_create(user=user_instance)
    
    if request.method == 'POST':
        username = request.POST.get('username')
        email = request.POST.get('email')
        active = request.POST.get('active', False)
        status = request.POST.get('status')
        
        if username:
            user_instance.username = username
        if email:
            user_instance.email = email
        user_instance.is_active = bool(active)

        if status:
            user_profile.status = status

        try:
            user_instance.save()
            user_profile.save()
            return redirect('index')
        except Exception as e:
            context = {
                "user_instance": user_instance,
                "user_profile": user_profile,
                "status_choices": UserProfile.STATUS_CHOICES,
                "error": str(e)
            }
            return render(request, 'milestone2/user-details.html', context)

    context = {
        "user_instance": user_instance,
        "user_profile": user_profile,
        "status_choices": UserProfile.STATUS_CHOICES,
    }
    return render(request, 'milestone2/user-details.html', context)







def test(request):
    return render(request, 'milestone2/Details.html')



def update_info_Education(request):
    try:
        user_info = Education.objects.get(user=request.user)
    except Education.DoesNotExist:
        user_info = None

    if request.method == 'POST':
        form = EducationForm(request.POST, instance=user_info)
        if form.is_valid():
            user_info = form.save(commit=False)
            user_info.user = request.user
            user_info.save()
            return redirect('index')  # Redirect after saving
    else:
        form = EducationForm(instance=user_info)

    context = {
        "user": request.user,
        'user_info': user_info,
        "form": form,
        "STATES": STATES,
        "COUNTRY_CHOICES":COUNTRY_CHOICES,
        "DEGREE_CHOICES":DEGREE_CHOICES
    }
    return render(request, 'milestone2/update_info_Education.html', context)


def update_data_Education(request):
    if request.method == 'POST':
        # Retrieve the form data
        institution = request.POST.get('institution')
        degreeaw = request.POST.get('degreeaw')
        degree = request.POST.get('degree')
        address = request.POST.get('address')
        city = request.POST.get('city')
        state = request.POST.get('state')
        zip_code = request.POST.get('zip')
        country = request.POST.get('country')
        phone = request.POST.get('phone')
        start = request.POST.get('start')
        end = request.POST.get('end')
        graduated = request.POST.get('graduated')
        date_of_graduation = request.POST.get('date')

        # Get the current user
        user = request.user
        
        if len(str(phone)) > 10:
            messages.error(request, "Social security number must be 10 characters.")
            return redirect('update_info_Education')
        if len(str(zip_code)) >5:
            messages.error(request, "Zip Code must be 5 characters.")
            return redirect('update_info_Education')

  

        # Retrieve or create Informations object for the user
        user_info, created = Education.objects.get_or_create(user=user)
        # Update the fields
        user_info.institution = institution
        user_info.degreeaw = degreeaw
        user_info.degree = degree
        user_info.address = address
        user_info.city = city
        user_info.state = state
        user_info.zip = zip_code
        user_info.country = country
        user_info.phone = phone
        user_info.start = start
        user_info.end = end
        user_info.graduated = graduated
        user_info.date = date_of_graduation

        user_info.save()

        form = EducationForm(request.POST, instance=request.user)
        if form.is_valid():
            form.save()

        messages.success(request, 'Successfully updated!')
        # Redirect to a success page or any other desired page
        return redirect('update_info_Education')
    else:
        # Handle cases where the request method is not POST
        return redirect('index')
    

def update_info_gschool(request):
    try:
        user_info_gschool = gschool.objects.get(user=request.user)
    except gschool.DoesNotExist:
        user_info_gschool = None

    if request.method == 'POST':
        form = gschoolForm(request.POST, instance=user_info_gschool)
        if form.is_valid():
            user_info_gschool = form.save(commit=False)
            user_info_gschool.user = request.user
            user_info_gschool.save()
            return redirect('index')  # Redirect after saving
    else:
        form = gschoolForm(instance=user_info_gschool)

    context = {
        "user": request.user,
        'user_info_gschool': user_info_gschool,
        "form": form,
        "STATES": STATES,
        "COUNTRY_CHOICES":COUNTRY_CHOICES,
        "DEGREE_CHOICES":DEGREE_CHOICES
    }
    return render(request, 'milestone2/update_info_gschool.html', context)


def update_data_gschool(request):
    if request.method == 'POST':
        # Retrieve the form data
        institution = request.POST.get('institution')
        degreeaw = request.POST.get('degreeaw')
        degree = request.POST.get('degree')
        address = request.POST.get('address')
        city = request.POST.get('city')
        state = request.POST.get('state')
        zip_code = request.POST.get('zip')
        country = request.POST.get('country')
        phone = request.POST.get('phone')
        start = request.POST.get('start')
        end = request.POST.get('end')
        graduated = request.POST.get('graduated')
        date_of_graduation = request.POST.get('date')

        # Get the current user
        user = request.user
        
        if len(str(phone)) > 10:
            messages.error(request, "Social security number must be 10 characters.")
            return redirect('update_info_gschool')
        if len(str(zip_code)) >5:
            messages.error(request, "Zip Code must be 5 characters.")
            return redirect('update_info_gschool')

  

        # Retrieve or create Informations object for the user
        user_info_gschool, created = gschool.objects.get_or_create(user=user)
        # Update the fields
        user_info_gschool.institution = institution
        user_info_gschool.degreeaw = degreeaw
        user_info_gschool.degree = degree
        user_info_gschool.address = address
        user_info_gschool.city = city
        user_info_gschool.state = state
        user_info_gschool.zip = zip_code
        user_info_gschool.country = country
        user_info_gschool.phone = phone
        user_info_gschool.start = start
        user_info_gschool.end = end
        user_info_gschool.graduated = graduated
        user_info_gschool.date = date_of_graduation

        user_info_gschool.save()

        form = gschoolForm(request.POST, instance=request.user)
        if form.is_valid():
            form.save()

        messages.success(request, 'Successfully updated!')
        # Redirect to a success page or any other desired page
        return redirect('update_info_gschool')
    else:
        # Handle cases where the request method is not POST
        return redirect('index')

def update_info_Medicaleducation(request):
    # try:
    #     user_info = Medicaleducation.objects.get(user=request.user)
    # except Medicaleducation.DoesNotExist:
    #     user_info = None

    user_info_queryset = Medicaleducation.objects.filter(user=request.user)
    if user_info_queryset.exists():
        user_info = user_info_queryset.first()  # ose bëni diçka tjetër me queryset sipas rastit
    else:
        user_info = None

    if request.method == 'POST':
        form = MedicaleducationForm(request.POST, instance=user_info)
        if form.is_valid():
            user_info = form.save(commit=False)
            user_info.user = request.user
            user_info.save()
            return redirect('index')  # Redirect after saving
    else:
        form = MedicaleducationForm(instance=user_info)

    context = {
        "user": request.user,
        'user_info': user_info,
        "form": form,
        "STATES": STATES,
        "COUNTRY_CHOICES":COUNTRY_CHOICES,
        "DEGREE_CHOICES":DEGREE_CHOICES
    }
    return render(request, 'milestone2/update_info_Medicaleducation.html', context)


def update_data_Medicaleducation(request):
    if request.method == 'POST':
        # Retrieve the form data
        institution = request.POST.get('institution')
        degreeaw = request.POST.get('degreeaw')
        degree = request.POST.get('degree')
        address = request.POST.get('address')
        city = request.POST.get('city')
        state = request.POST.get('state')
        zip_code = request.POST.get('zip')
        country = request.POST.get('country')
        phone = request.POST.get('phone')
        start = request.POST.get('start')
        end = request.POST.get('end')
        graduated = request.POST.get('graduated')
        date_of_graduation = request.POST.get('date')

        # Get the current user
        user = request.user
        
        if len(str(phone)) > 10:
            messages.error(request, "Social security number must be 10 characters.")
            return redirect('update_info_Medicaleducation')
        if len(str(zip_code)) >5:
            messages.error(request, "Zip Code must be 5 characters.")
            return redirect('update_info_Medicaleducation')

  

        # Retrieve or create Informations object for the user
        user_info, created = Medicaleducation.objects.get_or_create(user=user)
        # Update the fields
        user_info.institution = institution
        user_info.degreeaw = degreeaw
        user_info.degree = degree
        user_info.address = address
        user_info.city = city
        user_info.state = state
        user_info.zip = zip_code
        user_info.country = country
        user_info.phone = phone
        user_info.start = start
        user_info.end = end
        user_info.graduated = graduated
        user_info.date = date_of_graduation

        user_info.save()

        form = MedicaleducationForm(request.POST, instance=request.user)
        if form.is_valid():
            form.save()

        messages.success(request, 'Successfully updated!')
        # Redirect to a success page or any other desired page
        return redirect('update_info_Medicaleducation')
    else:
        # Handle cases where the request method is not POST
        return redirect('index')
    



