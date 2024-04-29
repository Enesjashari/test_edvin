from django.test import TestCase

# Create your tests here.



# hidden = "kosova123"


# password = "kosova123"
# import random

# x = random.randint(1,3)
# print(x)


recipient_email = 'enesjashari2004@gmail.com'

allowed_domains = ["gmail.com", "yahoo.com", "outlook.com", "hotmail.com", "aol.com", "protonmail.com", "icloud.com", "gmx.com"]
x = recipient_email.split("@")[1]

if x in allowed_domains:
    print(x)
