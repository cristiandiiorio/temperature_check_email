# temperature_check_email
Simple bash script that checks the system's temperature and sends an alert through email when the temperature goes over a threshold.

The temperature check is done with bash while the email side of things is handled by pyhton.

The temperature limit can be changed in line 15 of temps.sh .

Make sure to swap the placeholders in temperature_mail.py (lines 11 and 12) with the sender's and receiver's email addresses
