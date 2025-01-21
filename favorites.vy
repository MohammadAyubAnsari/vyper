# pragma version 0.4.0
# @license MIT

my_favorite_number:public(uint256) # 0

@internal
def store(new_number: uint256):
    self.my_favorite_number = new_number