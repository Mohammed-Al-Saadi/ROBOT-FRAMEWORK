import unittest
import assi2utils
class MyAgeTest(unittest.TestCase):
    def test_if_age_less_than_18(self):
       #arrange
        myAge = int(18)


        result = assi2utils.cheakinput(myAge)

        self.assertEqual(result,'You are a child')


    def test_if_age_bigger_than_18(self):
       #arrange
        myAge = int(18)


        result = assi2utils.cheakinput(myAge)

        self.assertEqual(result,'You are an adult')
  

    def test_if_age_bigger_than_70(self):
       #arrange
        myAge = int(77)


        result = assi2utils.cheakinput(myAge)

        self.assertEqual(result,'You are a pensioner')
if __name__ == "__main__":
    unittest.main()     

     