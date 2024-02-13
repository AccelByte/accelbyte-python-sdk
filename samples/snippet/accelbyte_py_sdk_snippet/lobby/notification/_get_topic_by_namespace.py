import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_topic_by_namespace
from accelbyte_py_sdk.api.lobby.models import ModelTopicByNamespacesResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = get_topic_by_namespace(
    after=after,
    before=before,
    limit=limit,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
