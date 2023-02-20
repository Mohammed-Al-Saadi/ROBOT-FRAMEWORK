


def check_number(num):    
    list = [num]
    while (num >=1 ):
        while(num >1):
            if num %2 ==0:
             num=num//2
            
            else:
                num=num*3+1
            list.append(num)   
        return list 
    else:
        print ('check your input')