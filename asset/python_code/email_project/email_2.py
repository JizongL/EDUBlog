
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText


fromaddr = "Dmmtmm123@gmail.com"
toaddress = "2015rpro@gmail.com"
msg = MIMEMultipart()
msg['From'] = fromaddr
msg['To'] = toaddress
msg['Subject'] = "Dear TmmGeek"

infile = open("textfile.txt","r")
file = infile.readline()
print(file)
body = file
msg.attach(MIMEText(body,'plain'))

server = smtplib.SMTP('smtp.gmail.com',587)
server.starttls()
server.login(fromaddr,"dmmtmm123##")
text = msg.as_string()
server.sendmail(fromaddr,toaddress,text)
server.quit()