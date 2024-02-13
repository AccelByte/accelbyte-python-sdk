import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import rule_set_list
from accelbyte_py_sdk.api.match2.models import ApiListRuleSetsResponse
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = rule_set_list(
    limit=limit,
    name=name,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
