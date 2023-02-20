
from ast import Num
import unittest
import assi5utils

class chech_input(unittest.TestCase):
    def test_1(self):
       #arrange
        num = int (122)
        
        result = assi5utils.check_number(num)

        self.assertEqual(result,[12, 6, 3, 10, 5, 16, 8, 4, 2, 1])
    def test_2(self):
       #arrange
        num = int (643)
        
        result = assi5utils.check_number(num)

        self.assertEqual(result,[64, 32, 16, 8, 4, 2, 1])    
        
    def test_3(self):
       #arrange
        num = int (12)
        
        result = assi5utils.check_number(num)

        self.assertEqual(result,[122, 61, 184, 92, 46, 23, 70, 35, 106, 53, 160, 80, 40, 20, 10, 5, 16, 8, 4, 2, 1])
if __name__ == "__main__":
     unittest.main()     