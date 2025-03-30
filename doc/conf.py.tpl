# Template for the configuration file for the Sphinx documentation generator.

import sys
import os

### Setting to edit manually in the template.

pygments_style = "sphinx"
html_theme = "nature"
templates_path = ["_templates"]

extensions = [
    # Extract docstrings from source. (See below for the import path.)
    "sphinx.ext.autodoc",
    # Link to documentation for other projects.
    "sphinx.ext.intersphinx",
    # Generate images for mathematics.
    "sphinx.ext.imgmath",
    # Allow :todo:.
    "sphinx.ext.todo",
]

source_suffix = ".rst"

# For the autodoc extension:
# To read docstrings, this extension uses "import ...".
# Ensure that this succeeds by adding, in this case, the root directory of this
# repo.
# (The appropriate .py files also need to be given as "srcs" to the
# "sphinx_docs" rule.)

sys.path.insert(0, os.path.abspath(".."))

# For the intersphinx extension: reference entities in other projects.
intersphinx_mapping = {
    "python": ("https://www.sphinx-doc.org/en/master", None)
}

### Settings that are automatically filled in because they are general.

root_doc = "{MAIN_INPUT_FILE}"
project = "{PROJECT_NAME}"
copyright = "{COPYRIGHT}"
version = "{VERSION}"
release = "{VERSION}"
