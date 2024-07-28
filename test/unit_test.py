"""
Plain unit test with __main__.
"""

import sys

import yaml  # type: ignore

if __name__ == "__main__":
    information = yaml.safe_load(
        """
name: test
error_code: 0
"""
    )
    sys.exit(information["error_code"])
