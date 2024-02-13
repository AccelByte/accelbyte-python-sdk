import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import get_user_info_status
from accelbyte_py_sdk.api.legal.models import RetrieveUserInfoCacheStatusResponse

result, error = get_user_info_status(
    namespaces=namespaces,
    x_additional_headers=x_additional_headers,
)
