# forms.py
from django import forms
from django.contrib.auth.models import User
from .models import Address,gschool,Medicaleducation


class UserUpdateForm(forms.ModelForm):
    class Meta:
        model = User
        fields = '__all__'  # Add other fields you want to update




class UserUpdateForm(forms.ModelForm):
    class Meta:
        model = User
        fields = '__all__'  # Add other fields you want to update


from .models import Education

from django import forms
from .models import Education

class EducationForm(forms.ModelForm):
    class Meta:
        model = Education
        fields = "__all__"
        widgets = {
            'institution': forms.TextInput(attrs={"placeholder": "Enter institution", "class": "form-control"}),
            'degreeaw': forms.Select(attrs={"class": "form-control"}),
            'degree': forms.Select(attrs={"class": "form-control"}),
            'address': forms.TextInput(attrs={"placeholder": "Enter address", "class": "form-control"}),
            'city': forms.TextInput(attrs={"placeholder": "Enter city", "class": "form-control"}),
            'state': forms.TextInput(attrs={"placeholder": "Enter state", "class": "form-control"}),
            'zip': forms.TextInput(attrs={"placeholder": "Enter zip code", "class": "form-control"}),
            'country': forms.Select(attrs={"class": "form-control"}),
            'phone': forms.TextInput(attrs={"placeholder": "Enter phone", "class": "form-control"}),
            'start': forms.DateInput(attrs={"type": "date", "class": "form-control"}),
            'end': forms.DateInput(attrs={"type": "date", "class": "form-control"}),
            'graduated': forms.Select(attrs={"class": "form-control"}),
            'date': forms.DateInput(attrs={"type": "date", "class": "form-control"}),
        }


        
        
from .models import Medicaleducation

class MedicaleducationForm(forms.ModelForm):
    class Meta:
        model = Medicaleducation
        fields = '__all__'
        

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = "__all__"  # Add more fields as needed


class AddressForm(forms.ModelForm):
    class Meta:
        model = Address
        fields = '__all__'


class EducationForm(forms.ModelForm):
    class Meta:
        model = Education
        fields = "__all__"
        widgets = {
            'institution': forms.TextInput(attrs={"placeholder": "Enter institution", "class": "form-control"}),
            'degreeaw': forms.Select(attrs={"class": "form-control"}),
            'degree': forms.Select(attrs={"class": "form-control"}),
            'address': forms.TextInput(attrs={"placeholder": "Enter address", "class": "form-control"}),
            'city': forms.TextInput(attrs={"placeholder": "Enter city", "class": "form-control"}),
            'state': forms.TextInput(attrs={"placeholder": "Enter state", "class": "form-control"}),
            'zip': forms.TextInput(attrs={"placeholder": "Enter zip code", "class": "form-control"}),
            'country': forms.Select(attrs={"class": "form-control"}),
            'phone': forms.TextInput(attrs={"placeholder": "Enter phone", "class": "form-control"}),
            'start': forms.DateInput(attrs={"type": "date", "class": "form-control"}),
            'end': forms.DateInput(attrs={"type": "date", "class": "form-control"}),
            'graduated': forms.Select(attrs={"class": "form-control"}),
            'date': forms.DateInput(attrs={"type": "date", "class": "form-control"}),
        }

class gschoolForm(forms.ModelForm):
    class Meta:
        model = gschool
        fields = '__all__'

class MedicaleducationForm(forms.ModelForm):
    class Meta:
        model = Medicaleducation
        fields = '__all__'