import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import get_stat_data
from accelbyte_py_sdk.api.matchmaking.models import ModelsStatResumeResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

result, error = get_stat_data(
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
