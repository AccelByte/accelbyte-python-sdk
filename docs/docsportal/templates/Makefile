# Copyright (c) 2022 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# If `venv/bin/python` exists, it is used. If not, use PATH to find python.
SYSTEM_PYTHON  = $(or $(shell which python3.9), $(shell which python3), $(shell which python))
PYTHON         = $(or $(wildcard venv/bin/python), $(SYSTEM_PYTHON))

venv:
	$(PYTHON) -m venv venv


deps:
	@test -n "$(CG_PATH)" || (echo "CG_PATH is not set"; exit 1)
	$(PYTHON) -m pip install -r "$(CG_PATH)/requirements.txt"


generate_guide:
	@test -n "$(CG_PATH)" || (echo "CG_PATH is not set"; exit 1)
	PYTHONPATH="$(CG_PATH)/src" \
		$(PYTHON) -m accelbyte_codegen \
		--templateFP 'python-sdk-guide.j2.md' \
		> 'tmp' || (rm 'tmp'; exit 1) && \
		mv 'tmp' '../python-sdk-guide.md'
