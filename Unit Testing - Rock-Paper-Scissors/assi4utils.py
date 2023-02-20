import random

def game(ai,player):

    if ai == 1: 
        ai = 'rock'
    if ai == 2:
        ai='paper'
    if ai == 3:
        ai='scissors'
    if player == "rock": 
        player = "rock"
    if player == 'paper':
        player='paper'
    if player == 'scissors':
        player='scissors' 

    print('User: '+ player)
    print('Computer: '+ ai)

    if ai == player:
        print('---------')
        return('Draw')
    elif (ai == "rock" and player == 'scissors') or ( ai =='paper' and player == "rock") or (ai== 'scissors' and player=='paper'):
        print('---------')
        return("Computer won")
        
    else:
        return('User Won')    
 


