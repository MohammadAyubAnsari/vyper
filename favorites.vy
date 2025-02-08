# pragma version 0.4.0
# @license MIT

struct Person:
    favorite_number:uint256
    name: String[100]

my_name: public(String[100])
my_favorite_number:public(uint256) # 0

list_of_numbers: public(uint256[5])
index: public(uint256)

#Constructor
@deploy
def __init__():
    self.my_favorite_number=7
    self.index = 0
    self.my_name = "Ayub"

@external
def store(new_number: uint256):
    self.my_favorite_number = new_number

@external
@view
def retrieve() -> uint256:
    return self.my_favorite_number

@external 
def add_number(favorite_number: uint256):
    self.list_of_numbers[self.index] = favorite_number
    self.index = self.index + 1
