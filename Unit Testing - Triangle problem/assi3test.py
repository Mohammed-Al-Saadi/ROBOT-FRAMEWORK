import unittest
import assi3utils

class LengthTest(unittest.TestCase):
    def test_if_Triangle_is_equilateral(self):
       #arrange
        side1 = int(17)
        side2 = int(17)
        side3 = int(147)
        


        result = assi3utils.cheaklength(side1,side2,side3)

        self.assertEqual(result,'equilateral')

    def test_if_Triangle_is_irregular(self):
       #arrange
        side1 = int(17)
        side2 = int(147)
        side3 = int(117)
        


        result = assi3utils.cheaklength(side1,side2,side3)

        self.assertEqual(result,'isosceles')        


    def test_if_Triangle_is_isosceles(self):
       #arrange
        side1 = int(127)
        side2 = int(137)
        side3 = int(137)
        


        result = assi3utils.cheaklength(side1,side2,side3)

        self.assertEqual(result,'irregular') 


  





if __name__ == "__main__":
     unittest.main()     