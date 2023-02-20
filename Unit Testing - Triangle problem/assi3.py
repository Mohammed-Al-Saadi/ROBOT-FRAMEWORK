

import assi3utils

app ='start'
while(app != 'x'):
    app=input('Enter X to exit and any key to con..')
    if (app != "x"):
        

        while True:
            try:
                side1=int(input('side1: '))
                side2=int(input('side2: '))
                side3=int(input('side3: ')) 
                print(assi3utils.cheaklength(side1,side2,side3)) 
                break
            except Exception:
              print('please check your input')             


    else:
        print('Thank you')    

   
