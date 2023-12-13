import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_get_inbox_users
from accelbyte_py_sdk.api.chat.models import ModelsGetInboxUsersResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_get_inbox_users(
    inbox=inbox,
    limit=limit,
    offset=offset,
    status=status,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
