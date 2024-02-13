import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import list_session
from accelbyte_py_sdk.api.dsmc.models import ModelsListSessionResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = list_session(
    count=count,
    offset=offset,
    region=region,
    with_server=with_server,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
