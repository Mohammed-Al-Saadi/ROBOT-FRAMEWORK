



import assi2utils


app = 'start'
while (app != 'exit'):
    app = input('press x to exit and any key to con.. :')
    if (app != 'x'):
        myAge = int
        myName = str
        while(myName):
               
             myName =str(input("Name: "))
             break 
              
           
        
        while(myAge):
            try:   
              myAge = int(input('Age: '))
              print(assi2utils.cheakinput(myAge))
              break
            except Exception:
              print('please check your input')          
                
    else:
        print('thank you') 
        break   
    
      
   




     
     









    