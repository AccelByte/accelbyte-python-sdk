import setuptools
from pathlib import Path


NAME = "accelbyte_py_sdk"
VERSION = "0.27.0"
AUTHOR = "AccelByte"
AUTHOR_EMAIL = "dev@accelbyte.net"
SHORT_DESCRIPTION = "AccelByte Python SDK"
LONG_DESCRIPTION = (Path(__file__).parent / "README.md").read_text()
LICENSE_TYPE = "MIT"
PYTHON_VERSION = "3.9"

config = {
    "name": NAME,
    "version": VERSION,
    "author": AUTHOR,
    "author_email": AUTHOR_EMAIL,
    "description": SHORT_DESCRIPTION,
    "long_description": LONG_DESCRIPTION,
    "long_description_content_type": "text/markdown",
    "license": LICENSE_TYPE,
    "license_files": ["LICENSE"],
    "package_dir": {"": "."},
    "packages": setuptools.find_packages(where=".", exclude=("tests*", "tests.*")),
    "python_requires": f">={PYTHON_VERSION}",
    "classifiers": [
        "Development Status :: 2 - Pre-Alpha",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: MIT License",
        "Natural Language :: English",
        "Operating System :: OS Independent",
        f"Programming Language :: Python :: {PYTHON_VERSION}",
    ],
}

setuptools.setup(**config)
