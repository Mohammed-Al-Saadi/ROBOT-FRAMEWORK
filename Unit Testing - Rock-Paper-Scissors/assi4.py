import  random

from sqlalchemy import true
import assi4utils

def rock_paper_scissors():
    while true:
        print('choose Rock, Paper , scissors')
        player =(input("Please input Rock or Paper or scissors: "))
        ai = random.randint(1,3)
        print(assi4utils.game(ai,player))

rock_paper_scissors()