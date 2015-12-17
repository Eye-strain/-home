import smtplib
import sys

from_addr = "m.krzystek@gmail.com"

if len(sys.argv) != 2:
    destination = raw_input('Destination (default: m.krzystek@gmail.com): ')
    if not destination:
        to_addr_list = 'm.krzystek@gmail.com'
    else:
        to_addr_list = destination
else:
    to_addr_list = sys.argv[1]

def sendemail(from_addr, to_addr_list, cc_addr_list,
                subject, message,
                login, password,
                smtpserver='smtp.gmail.com:587'):
    header  = 'From: %s\n' % from_addr
    header += 'To: %s\n' % ','.join(to_addr_list)
    header += 'Cc: %s\n' % ','.join(cc_addr_list)
    header += 'Subject: %s\n\n' % subject
    message = header + message

    server = smtplib.SMTP(smtpserver)
    server.starttls()
    server.login(login,password)
    problems = server.sendmail(from_addr, to_addr_list, message)
    server.quit()
    return problems

sendemail(from_addr    = [from_addr],
          to_addr_list = [to_addr_list],
          cc_addr_list = [''],
          subject      = 'Howdy',
          message      = 'Howdy from a python function',
          login        = 'm.krzystek@gmail.com',
          password     = 'turnthe303page')
