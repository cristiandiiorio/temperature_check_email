import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

#message object instance is created
msg = MIMEMultipart()
  
#message parameters (make sure to change the placeholders with your credentials)
#if you're using gmail make sure to put your app token here, not your actual password
password = "your password"    
msg['From'] = "sender's email address"
msg['To'] = "receiver's email address"

msg['Subject'] = "Your system's temperature is greater than 60°C"

#GMAIL server instance to send the email is created
server = smtplib.SMTP('smtp.gmail.com: 587')

server.starttls()
  
#loads both sender email address and password
server.login(msg['From'], password)
  
#message is sent
server.sendmail(msg['From'], msg['To'], msg.as_string())
 
#gmail server instance is closed
server.quit()
