import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import admin_create_extension_category
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiExtensionCategoryApiRequest
from accelbyte_py_sdk.api.reporting.models import RestapiExtensionCategoryApiResponse

"""
body:
Definition: RestapiExtensionCategoryApiRequest
extension_category: str
extension_category_name: str
service_source: str

Example: '{"extensionCategory": "Fx3g46Cb7M4U5nAM", "extensionCategoryName": "U0O3CDWVNo99GfAA", "serviceSource": "ues8SIkBa7nji8a2"}'
"""

result, error = admin_create_extension_category(
    body=body,
    x_additional_headers=x_additional_headers,
)
