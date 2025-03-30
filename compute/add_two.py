"""
Class that allows one to add 2, modulo some value.
"""


class AddTwo:
    """
    Function object that adds 2, but returns the remainder after using modulus
    ``modulus``.

    :param modulus: The modulus to use for the computation.
    """

    def __init__(self, modulus):
        self.modulus = modulus

    def __call__(self, value):
        """
        :return:
            ``value``, but with 2 added, modulo ``self.modulus``.
        """
        return (value + 2) % self.modulus
