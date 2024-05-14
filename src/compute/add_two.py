"""
Class that allows one to add 2, modulo some value.
"""


class AddTwo:
    def __init__(self, modulus):
        self.modulus = modulus

    def __call__(self, value):
        return (value + 2) % self.modulus
