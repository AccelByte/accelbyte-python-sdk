import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import delete_rule_set
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = delete_rule_set(
    ruleset=ruleset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
