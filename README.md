<h1> temperature_check_email </h1>

<h3><i> What is this? </i></h3>

<p>This is a simple bash script that checks the system's temperature and sends an email alert when the temperature goes over a threshold.</p>
<p>The temperature check is done with bash while the email side of things is handled by pyhton.</p>

<h3><i> What do I need to change in order to make it work? </i></h3>

<p> The temperature limit can be changed in <ins> temps.sh </ins>(line 15) .   Make sure to swap the placeholders in <ins>temperature_mail.py </ins>(lines 11 and 12) with the sender's and receiver's email addresses. </p>
