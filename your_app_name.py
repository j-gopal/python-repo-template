r"""
RUN.PY

Invoke your_app_name package from this wrapper script.
"""

# Prepend this directory to sys.path to perform relative imports
import sys, os; sys.path.insert(0, os.path.dirname(__file__))

from your_app_name.app import main

# Clean up sys.path when done
sys.path.pop(0)

if __name__ == "__main__":
    main()
