import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import clean_all_mocks
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

result, error = clean_all_mocks(
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
