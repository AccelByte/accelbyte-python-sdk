import os
from typing import Any, Optional

from accelbyte_py_sdk.services.auth import login_client
from accelbyte_py_sdk.services.auth import login_user
from accelbyte_py_sdk.services.auth import logout as logout_internal


def login_as(type_: str, username: Optional[str] = None, password: Optional[str] = None):
    if type_ is None:
        return
    type_ = type_.casefold()
    if type_ == "client":
        token, error = login_client()
    elif type_ == "user":
        if username is None:
            username = os.environ["AB_USERNAME"]
        if password is None:
            password = os.environ["AB_PASSWORD"]
        token, error = login_user(username, password)
    else:
        raise ValueError
    if error:
        raise Exception(str(error))


def logout():
    _, error = logout_internal()
    if error:
        raise Exception(str(error))


def to_dict(obj: Any) -> Any:
    if isinstance(obj, dict):
        obj = {k: to_dict(v) for k, v in obj.items()}
    elif isinstance(obj, list):
        obj = [to_dict(i) for i in obj]
    elif hasattr(obj, "to_dict"):
        obj = obj.to_dict()
    return obj
