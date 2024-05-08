from django.urls import path
from . import views
from .views import forgotmypassword, CustomPasswordResetDoneView, CustomPasswordResetCompleteView
from django.contrib.auth.views import PasswordResetConfirmView

urlpatterns = [
    #----Start Authentication Form
    path('register/', views.register,name='register'),
    path('login/',views.login,name ='login' ),
    path('logout/',views.logout,name ='logout' ),
    #End Auth Form ----
    #Home page
    path('', views.index,name='index'),
    #---Update data start
    path('update-info/', views.update_info, name='update_info'),
    path('update-data/', views.update_data, name='update_data'),
    #End Update Data ----

    #Forgot my password start----
    path('forgotmypassword/', forgotmypassword, name='forgotmypassword'),
    path('password_reset_done/', CustomPasswordResetDoneView.as_view(), name='password_reset_done'),
    path('password_reset_confirm/<uidb64>/<token>/', PasswordResetConfirmView.as_view(), name='password_reset_confirm'),
    path('password_reset_complete/', CustomPasswordResetCompleteView.as_view(), name='password_reset_complete'),
    path('confirm-email/<str:uidb64>/<str:token>/', views.confirm_email, name='confirm_email'),
    #End forgot my password ----
    path('update-edu/', views.update_edu, name='update-edu'),
    path('edu-data', views.edu_data, name='edu_data'),


    path('autocomplete/', views.autocomplete_view, name='autocomplete'),
    path('user-data/<str:id>', views.user_data, name='user-data'),
    path('personal-info/', views.personal_information, name='personal-info'),
    path('education-info/', views.education_info, name='education-info'),
    path('graduate-school-info/', views.graduate_school_info, name='graduate-school-info'),
    path('medical-education/', views.medical_education_info, name='medical-education-info'),
    path('update-info-Education/', views.update_info_Education, name='update_info_Education'),
    path('update-data-Education/', views.update_data_Education, name='update_data_Education'),
    path('update-info-gschool/', views.update_info_gschool, name='update_info_gschool'),
    path('update-data-gschool/', views.update_data_gschool, name='update_data_gschool'),
    path('update-info_Medicaleducation/', views.update_info_Medicaleducation, name='update_info_Medicaleducation'),
    path('update-data_Medicaleducation/', views.update_data_Medicaleducation, name='update_data_Medicaleducation'),



    path('test', views.test, name='test'),
]

