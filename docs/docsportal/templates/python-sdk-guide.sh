#!/bin/bash

export PYTHONPATH=$PYTHONPATH:$ABMD

python3 -m abmd \
    -s 'docs/docsportal/templates/python-sdk-guide.t.md' \
    -d 'docs/docsportal/python-sdk-guide.md' \
