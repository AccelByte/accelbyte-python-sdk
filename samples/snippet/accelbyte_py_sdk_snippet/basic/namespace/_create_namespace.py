import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import create_namespace
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import NamespaceCreate
from accelbyte_py_sdk.api.basic.models import NamespaceInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: NamespaceCreate
display_name: str
namespace: str

Example: '{"displayName": "V8W2HGXSMYnMToHv", "namespace": "P70e9QbXCnJe5NXK"}'
"""

result, error = create_namespace(
    body=body,
    x_additional_headers=x_additional_headers,
)
