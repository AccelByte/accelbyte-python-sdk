import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_child_namespaces
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import NamespaceInfo

result, error = get_child_namespaces(
    active_only=active_only,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
