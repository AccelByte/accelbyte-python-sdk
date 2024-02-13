import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import change_namespace_status
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import NamespaceInfo
from accelbyte_py_sdk.api.basic.models import NamespaceStatusUpdate
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: NamespaceStatusUpdate
status: str

Example: '{"status": "ACTIVE"}'
"""

result, error = change_namespace_status(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
