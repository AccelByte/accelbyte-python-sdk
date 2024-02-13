import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_get_profanity_lists
from accelbyte_py_sdk.api.lobby.models import ModelsAdminGetProfanityListsListResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = admin_get_profanity_lists(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
