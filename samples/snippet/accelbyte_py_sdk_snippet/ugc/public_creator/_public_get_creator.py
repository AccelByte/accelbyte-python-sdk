import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_get_creator
from accelbyte_py_sdk.api.ugc.models import ModelsCreatorResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = public_get_creator(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
