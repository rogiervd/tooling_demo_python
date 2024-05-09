"""
Test add_two.py using pytest.
"""

import pytest  # type: ignore

from compute import AddTwo


@pytest.mark.parametrize("modulus", [1, 2, 7, 15])
@pytest.mark.parametrize("value", [0, 1, 2, 27, 35])
def test_add_two(modulus, value):
    expected = value + 2
    while expected >= modulus:
        expected -= modulus

    add_two = AddTwo(modulus)
    assert add_two(value) == expected
