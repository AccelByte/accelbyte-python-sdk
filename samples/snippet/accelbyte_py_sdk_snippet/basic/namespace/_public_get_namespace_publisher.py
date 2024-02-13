import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_get_namespace_publisher
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import NamespacePublisherInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = public_get_namespace_publisher(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
