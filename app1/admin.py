# admin.py
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from .models import Informations, Education, Agreements, hospitals, Medicaleducation, gschool, MedicalTraining, Residency, Fellowship, Preceptorship, Fifthpathway, Boardcertifications, Lifesupport, Licences, Dearegistration, Licencesnotherexams, UserProfile
from .forms import UserProfileForm

# Define your inline classes
class AccountInline(admin.StackedInline):
    model = Informations
    can_delete = False
    verbose_name_plural = "Additional Information"

class Agreementsinline(admin.StackedInline):
    model = Agreements
    can_delete = False
    verbose_name_plural = "Agreements"

class hospitalsinline(admin.StackedInline):
    model = hospitals
    can_delete = False
    verbose_name_plural = "Hospitals"

class EducationInline(admin.StackedInline):
    model = Education
    can_delete = False
    verbose_name_plural = "Education"
    extra = 2

class MeducationInline(admin.StackedInline):
    model = Medicaleducation
    can_delete = False
    verbose_name_plural = "Medical Education"
    extra = 1

class GschoolInline(admin.StackedInline):
    model = gschool
    can_delete = False
    verbose_name_plural = "Other Graduate School"
    extra = 1

class MedicaltrainingInline(admin.StackedInline):
    model = MedicalTraining
    can_delete = False
    verbose_name_plural = "Other Graduate School"
    extra = 1

class ResidencyInline(admin.StackedInline):
    model = Residency
    can_delete = False
    verbose_name_plural = "Residency"
    extra = 1

class FellowshipInline(admin.StackedInline):
    model = Fellowship
    can_delete = False
    verbose_name_plural = "Fellowship"
    extra = 1

class PreceptorshipInline(admin.StackedInline):
    model = Preceptorship
    can_delete = False
    verbose_name_plural = "Preceptorship"
    extra = 1

class FifthpathwayInline(admin.StackedInline):
    model = Fifthpathway
    can_delete = False
    verbose_name_plural = "Fifth Pathway"
    extra = 1

class BoardcertificationsInline(admin.StackedInline):
    model = Boardcertifications
    can_delete = False
    verbose_name_plural = "Board Certifications"
    extra = 1

class LifesupportInline(admin.StackedInline):
    model = Lifesupport
    can_delete = False
    verbose_name_plural = "Life Support/Other Certifications"
    extra = 1

class LicencesInline(admin.StackedInline):
    model = Licences
    can_delete = False
    verbose_name_plural = "Licenses"
    extra = 1

class DeaInline(admin.StackedInline):
    model = Dearegistration
    can_delete = False
    verbose_name_plural = "DEA Registration"
    extra = 1

class LicencesnotherexamsInline(admin.StackedInline):
    model = Licencesnotherexams
    can_delete = False
    verbose_name_plural = "License/Other Exams"
    extra = 1

# Inline for UserProfile
class UserProfileInline(admin.StackedInline):
    model = UserProfile
    form = UserProfileForm
    can_delete = False
    verbose_name_plural = "User Profiles"

# Extend UserAdmin to include your inlines
class CustomUserAdmin(UserAdmin):
    inlines = [
        UserProfileInline,
        AccountInline,
        EducationInline,
        MeducationInline,
        GschoolInline,
        MedicaltrainingInline,
        ResidencyInline,
        Agreementsinline,
        FellowshipInline,
        hospitalsinline,
        PreceptorshipInline,
        FifthpathwayInline,
        BoardcertificationsInline,
        LifesupportInline,
        LicencesInline,
        DeaInline,
        LicencesnotherexamsInline,
    ]

# Unregister the default UserAdmin
admin.site.unregister(User)

# Register UserAdmin with your customizations
admin.site.register(User, CustomUserAdmin)

# Register your models if not already registered
@admin.register(Informations)
class InformationsAdmin(admin.ModelAdmin):
    pass

@admin.register(Agreements)
class AgreementsAdmin(admin.ModelAdmin):
    pass

@admin.register(hospitals)
class hospitalsAdmin(admin.ModelAdmin):
    pass

@admin.register(Education)
class EducationAdmin(admin.ModelAdmin):
    pass

@admin.register(gschool)
class gschoolAdmin(admin.ModelAdmin):
    pass

@admin.register(MedicalTraining)
class MedicalTrainingAdmin(admin.ModelAdmin):
    pass

@admin.register(Residency)
class ResidencyAdmin(admin.ModelAdmin):
    pass

@admin.register(Fellowship)
class FellowshipAdmin(admin.ModelAdmin):
    pass

@admin.register(Preceptorship)
class PreceptorshipAdmin(admin.ModelAdmin):
    pass

@admin.register(Fifthpathway)
class FifthpathwayAdmin(admin.ModelAdmin):
    pass

@admin.register(Boardcertifications)
class BoardcertificationsAdmin(admin.ModelAdmin):
    pass

@admin.register(Lifesupport)
class LifesupportAdmin(admin.ModelAdmin):
    pass

@admin.register(Licences)
class LicencesAdmin(admin.ModelAdmin):
    pass

@admin.register(Dearegistration)
class DearegistrationAdmin(admin.ModelAdmin):
    pass

@admin.register(Licencesnotherexams)
class LicencesnotherexamsAdmin(admin.ModelAdmin):
    pass

@admin.register(UserProfile)
class UserProfileAdmin(admin.ModelAdmin):
    list_display = ('user', 'status')
