import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import count_session
from accelbyte_py_sdk.api.dsmc.models import ModelsCountSessionResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = count_session(
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
