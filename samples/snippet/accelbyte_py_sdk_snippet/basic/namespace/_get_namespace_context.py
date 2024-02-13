import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_namespace_context
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import NamespaceContext

result, error = get_namespace_context(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
