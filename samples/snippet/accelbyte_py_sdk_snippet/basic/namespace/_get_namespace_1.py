import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_namespace_1
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import NamespaceSimpleInfo

result, error = get_namespace_1(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
