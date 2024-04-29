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



#Provide the users for super admin 
def index(request):
    logged_in_user = request.user
    users = User.objects.all()[1:]
    logged_in_user = request.user
    context = {
        "logged_in_user": logged_in_user,
        "users":users,
    }
    return render(request, "authentication/index2.html", context)

#Handle the registration,confirmation link via email
def register(request):
    if request.method == "POST":
        agree_checked = request.POST.get('agree', True)
        if not agree_checked:
            messages.error(request, 'You must agree to the terms of service.')
            return redirect('register')

        username = request.POST.get('username', '')
        email = request.POST.get('email', '')
        password = request.POST.get('password', '')
        password2 = request.POST.get('password2', '')

        # allowed_domains = ["gmail.com", "yahoo.com", "outlook.com", "hotmail.com", "aol.com", "protonmail.com", "icloud.com", "gmx.com"]
        # domain = email.split("@")[1]

        # if domain in allowed_domains :
            # messages.error(request, 'Registration failed. Email used in this account might be a potential scam, try another one or contact us!')
            # return redirect('register')

        if password != password2:
            messages.error(request, 'Passwords do not match.')
            return redirect('login')
            
        if User.objects.filter(username=username).exists():
            messages.error(request, 'Username is already taken.')
            return redirect("login")
        elif User.objects.filter(email=email).exists():
            messages.error(request, 'Email is already registered.')
            return redirect('login')

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






# from .models import Updateinfo
from .models import Informations
from django.shortcuts import render, redirect
from django.core.exceptions import ObjectDoesNotExist
from .models import Informations
from .models import COUNTRY_CHOICES 
#Gether previus user data and prepare it for an update
# def update_info(request):
#     if request.method == 'POST':
#         # Process form submission for updating additional user info
#         return redirect('index')  # Redirect user after form submission
#     else:
#         try:
#             user_info = Informations.objects.get(user=request.user.id)
#             form = UserUpdateForm(instance=request.user)
#         except ObjectDoesNotExist:
#             user_info = None  # Or any default value you prefer
        
#         context = {
#             "user": request.user,
#             'user_info': user_info,
#             "form":form,
#             "COUNTRY_CHOICES":COUNTRY_CHOICES,
#         }
#         return render(request, 'update_info.html', context)

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


# #Update previus data with new ones
# def update_data(request):
#     if request.method == 'POST':
#         # Retrieve the form data
#         address = request.POST.get('address')  # Truncate the value to 100 characters
        
#         phone_number = request.POST.get('phone')  # Truncate the value to 100 characters
        
#         city = request.POST.get('city')# Truncate the value to 100 characters

#         prefix = request.POST.get('prefix')
        
#         # Get the current user
#         user = request.user
        
#         # Retrieve or create Informations object for the user
#         user_info, created = Informations.objects.get_or_create(user=user)
        
#         # Update the fields
#         user_info.address = address
#         user_info.phone = phone_number
#         user_info.city = city
#         user_info.preffix = prefix 
#         user_info.save()
        
#         # Redirect to a success page or any other desired page
#         return redirect('index')
#     else:
#         # Handle cases where the request method is not POST
#         return redirect('index')



#Handle the user login
def login(request):
    if request.method == "POST":
        username = request.POST.get('username', '')
        password = request.POST.get('password', '')

        user = authenticate(request, username=username, password=password)
        if user is not None:
            if user.is_active:
                auth_login(request, user)  # Call the renamed login function
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
    return redirect('index')




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
    return render(request, 'milestone2/education/update_edu.html', context)


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
    
        # Get the current user
        user = request.user
        

        # if len(str(phone)) >10:
        #     messages.error(request, "Social security number must be 10 characters or less.")
        #     return redirect('update_info')
        # if len(str(zipcode)) >5:
        #     messages.error(request, "Zip Code must be 5 characters.")
        #     return redirect('update_info')
        # if len(str(socialsecuritynumber)) >10:
        #     messages.error(request, "Social security number must be 10 characters or less.")
        #     return redirect('update_info')
        # if len(str(phone)) >10:
        #     messages.error(request, "Social security number must be 10 characters or less.")
        #     return redirect('update_info')

        # Retrieve or create Informations object for the user
        user_info, created = Education.objects.get_or_create(user=user)
        
        # Update the fields
        user_info.institution = institution
        user_info.degreeaw = degreeaw
        user_info.degree = degree
        user_info.address = address
        user_info.city = city
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
    


    
    
from .models import Medicaleducation  
    
from .forms import MedicaleducationForm

def update_info_Medicaleducation(request):
    try:
        user_info = Medicaleducation.objects.get(user=request.user)
    except Medicaleducation.DoesNotExist:
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
        "COUNTRY_CHOICES":COUNTRY_CHOICES,
        "DEGREE_CHOICES":DEGREE_CHOICES
    }
    return render(request, 'milestone2/education/update_info_Medicaleducation.html', context)


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
    
    
    
    
from .models import gschool  
    
from .forms import gschoolForm

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
        "COUNTRY_CHOICES":COUNTRY_CHOICES,
        "DEGREE_CHOICES":DEGREE_CHOICES
    }
    return render(request, 'milestone2/education/update_info_gschool.html', context)


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

def autocomplete_view(request):
    return render(request, 'autocomplete.html')




from django.shortcuts import render, redirect
from .forms import UserForm
from .models import User

def user_data(request, id):
    user = User.objects.get(id=id)
    if request.method == 'POST':
        form = UserForm(request.POST, instance=user)
        if form.is_valid():
            form.save()
            return redirect('user-data', id=id)
    else:
        form = UserForm(instance=user)
    context = {
        'form': form,
    }
    return render(request, 'milestone2/user-details.html', context)







def test(request):
    return render(request, 'milestone2/Details.html')