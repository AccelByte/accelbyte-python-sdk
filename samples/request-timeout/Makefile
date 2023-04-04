PYTHON_EXEC := python3.9
VENV_DIR := venv
VENV_EXEC_DIR := bin

setup:
	${PYTHON_EXEC} -m venv ${VENV_DIR}
	${VENV_DIR}/${VENV_EXEC_DIR}/${PYTHON_EXEC} -m pip install --upgrade pip
	${VENV_DIR}/${VENV_EXEC_DIR}/pip install requests httpx httpcore[http2] websockets pyyaml pyjwt accelbyte-py-sdk

run:
	${VENV_DIR}/${VENV_EXEC_DIR}/${PYTHON_EXEC} app.py
