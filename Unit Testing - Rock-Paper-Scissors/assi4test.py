import unittest
import assi4utils

class rps(unittest.TestCase):
    def test_if_Draw(self):
       #arrange
        ai = int(2)
        player = 'rock'


        result = assi4utils.game(ai,player)

        self.assertEqual(result,'Draw')



    def test_if_Loss(self):
        #arrange
        ai = int(3)
        player = 'rock'


        result = assi4utils.game(ai,player)

        self.assertEqual(result,'Computer won')



    def test_if_Win(self):
       #arrange
        ai = int(1)
        player = 'rock'


        result = assi4utils.game(ai,player)

        self.assertEqual(result,'User Won')
    
if __name__ == "__main__":
    unittest.main()     

     