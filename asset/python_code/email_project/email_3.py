import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email import encoders

fromaddr = "Dmmtmm123@gmail.com"
toaddress = "2015rpro@gmail.com"

msg = MIMEMultipart()

msg['From'] = fromaddr
msg['To'] = toaddress
msg['Subject'] = "This is a test with attachment"

## send email with attachment

body = 'this is a test with attachment'

msg.attach(MIMEText(body,'plain'))

filename = 'david.png'
attachment = open('/Users/liangjizong22/Desktop/david.png','rb')
## remember to open image in binary mode.
part = MIMEBase('application', 'octet-stream')
part.set_payload((attachment).read())
encoders.encode_base64(part)
part.add_header('Content-Disposition', "attachment; filename= %s" % filename)

msg.attach(part)
server = smtplib.SMTP('smtp.gmail.com',587)
server.starttls()
server.login(fromaddr,"dmmtmm123##")
text = msg.as_string()
server.sendmail(fromaddr,toaddress,text)
server.quit()


