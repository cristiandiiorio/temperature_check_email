import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

# create message object instance
msg = MIMEMultipart()
  
# setup the parameters of the message
password = "sanwxyprfkmzsxpm"
msg['From'] = "oraclerabiot22@gmail.com"
msg['To'] = "chrisdior2002@gmail.com"
msg['Subject'] = "Temperatura maggiore di 60° rpi"

#create server
server = smtplib.SMTP('smtp.gmail.com: 587')
server.starttls()
  
# Login Credentials for sending the mail
server.login(msg['From'], password)
  
# send the message via the server.
server.sendmail(msg['From'], msg['To'], msg.as_string())
  
server.quit()

print("successfully sent email to %s:" % (msg['To']))
