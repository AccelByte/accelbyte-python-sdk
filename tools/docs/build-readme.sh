#!/bin/bash

#Change directory to <git_root>
cd ../..

python3 tools/docs/readme_builder.py \
  -s 'tools/docs/templates/README-indepthtopics.t.md' \
  -d 'tools/docs/tmp/README-indepthtopics.md'

python3 tools/docs/readme_builder.py \
  -s 'tools/docs/templates/README.t.md' \
  -d 'README.md'

rm -rf tools/docs/tmp
