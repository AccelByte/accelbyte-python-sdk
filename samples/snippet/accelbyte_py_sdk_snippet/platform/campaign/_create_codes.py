import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_codes
from accelbyte_py_sdk.api.platform.models import CodeCreate
from accelbyte_py_sdk.api.platform.models import CodeCreateResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: CodeCreate
quantity: int

Example: '{"quantity": 76}'
"""

result, error = create_codes(
    campaign_id=campaign_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
