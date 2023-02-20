from logging import exception
from numpy import number
import assi5utils

def inputuser():
   while True:
    try: 
     num = int(input("write a number: "))

     print (assi5utils.check_number(num))
     
    except Exception:
        print('check your input')
inputuser()
