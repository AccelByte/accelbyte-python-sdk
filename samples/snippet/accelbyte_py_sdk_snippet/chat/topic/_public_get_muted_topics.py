import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import public_get_muted_topics
from accelbyte_py_sdk.api.chat.models import ApiMutedTopicResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = public_get_muted_topics(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
