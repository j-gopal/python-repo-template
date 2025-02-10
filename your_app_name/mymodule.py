r"""
MODULE NAME

This is a template Python module for showing desired documentation and style. The module docstring
is meant to describe what the overall module does. Function and classes follow a similar format,
with some differences in the type of content each one has.

Docstrings may extend over multiple lines. They can also include important sections for their given
block (see below). It's important to only put as much documentation as is needed. Try making the
code itself as obvious as possible to avoid over-documenting.

Style being used was based on the following documentation guide:
https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_numpy.html
"""
# Standard library full imports
import sys
import os
# Related third-party full imports
import docopt
# Local application full imports
import my_lib_1
import my_lib_2
# Standard library partial imports
from pathlib import Path
# Related third-party partial imports
from third_party_1 import obj1, obj2
from third_party_2 import obj1, obj2
# Local application partial imports
from my_lib_1 import obj1, obj2
from my_lib_2 import obj1, obj2

# ==================================================================================================
# Constants

# Command line interface for docopt
USAGE_MSG = """
Script Name

Usage:
  script.py [options]
  script.py -h | --help

Options:
  -a --option-with=<arg>  [default: some-value] Option with an argument.
  -n --option-no-arg      Command line flag without argument.
  -h --help               Show this screen.
"""

# ==================================================================================================
# Helper Functions

def example_function(param1, param2):
    """Example description of a function.
    
    There should generally be a description of the code in one or more following paragraphs. Some 
    blocks of code only have a one-line summary as their docstring. For more complicated blocks,
    more elaboration might be required.
    """
    return None

# ==================================================================================================
# Helper Classes

class ExampleClass:
    """One-line summary of the class docstring.
    
    There should generally be a description of the code in one or more following paragraphs. Some 
    blocks of code only have a one-line summary as their docstring. For more complicated blocks,
    more elaboration might be required.
    """

    def example_method(self, param1, param2):
        """Example description of a class method.
        
        There should generally be a description of the code in one or more following paragraphs. 
        Some blocks of code only have a one-line summary as their docstring. For more complicated
        blocks, more elaboration might be required.
        """
        return None

# ==================================================================================================
# Main

def main():
    """Main method of the module.

    Encompasses all the code preceding it. Usually more complex than the methods defined that are
    used to support it. Generally run within the "__name__ = '__main__'" block. Can also be used to
    define unit tests when run on its own.
    """

    # Set up interface for docopt
    args = docopt.docopt(USAGE_MSG)
    
    # Return nothing for now
    return None


if __name__ == "__main__": 
    main()
    pass

# ==================================================================================================
# Exporting

__all__ = []

# ==================================================================================================
# Testing

# ==================================================================================================
# Scraps

r'''
'''
