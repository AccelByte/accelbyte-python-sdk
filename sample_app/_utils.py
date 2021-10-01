import os

from typing import Optional

from accelbyte_py_sdk.api.iam import token_grant_v3
from accelbyte_py_sdk.services.auth import login
from accelbyte_py_sdk.services.auth import logout as logout_internal


def login_as(type_: str, username: Optional[str] = None, password: Optional[str] = None):
    if type_ is None:
        return
    type_ = type_.casefold()
    if type_ == "client":
        login_client()
    elif type_ == "user":
        login_user(username, password)


def login_client():
    _, error = token_grant_v3(grant_type="client_credentials")
    if error:
        raise Exception(str(error))


def login_user(username: Optional[str] = None, password: Optional[str] = None):
    if username is None:
        username = os.environ["AB_USERNAME"]
    if password is None:
        password = os.environ["AB_PASSWORD"]
    _, error = login(username, password)
    if error:
        raise Exception(str(error))


def logout():
    _, error = logout_internal()
    if error:
        raise Exception(str(error))
