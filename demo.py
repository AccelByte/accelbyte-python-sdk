from os import environ

import accelbyte_py_sdk
from accelbyte_py_sdk.core import get_access_token
from accelbyte_py_sdk.services.auth import login, logout

if __name__ == "__main__":
    accelbyte_py_sdk.initialize()

    _, error = get_access_token()
    assert error is not None

    username = environ["AB_USERNAME"]
    password = environ["AB_PASSWORD"]

    _, error = login(username, password)
    assert error is None
    print(get_access_token())

    _, error = logout()
    assert error is None

    _, error = get_access_token()
    assert error is not None
