import smtplib

server = smtplib.SMTP('smtp.gmail.com', 587)
server.starttls()
server.login("Dmmtmm123@gmail.com", "dmmtmm123##")

msg = "Hi, testing"
server.sendmail("Dmmtmm123@gmail.com", "2015rpro@gmail.com", msg)
server.quit()
