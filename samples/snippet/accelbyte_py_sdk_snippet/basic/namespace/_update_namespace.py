import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_namespace
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import NamespaceInfo
from accelbyte_py_sdk.api.basic.models import NamespaceUpdate
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: NamespaceUpdate
display_name: str

Example: '{"displayName": "KAsQH7TpZ3vQXpTx"}'
"""

result, error = update_namespace(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
