from numpy import add_newdoc


def cheaklength(side1,side2,side3):

    if side1==side2 and side2==side3:
                return 'equilateral'
    elif side1==side2 and side2!=side3 or side2==side3 and side3!=side1 or side1==side3 and side3!=side2:
                return 'isosceles'

    elif side1!=side2 and side2!=side3 and side1!=side3 :
                return 'irregular'
                