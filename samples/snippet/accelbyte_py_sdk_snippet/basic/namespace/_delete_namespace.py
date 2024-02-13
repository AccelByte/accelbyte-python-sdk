import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import delete_namespace
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import NamespaceInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = delete_namespace(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
