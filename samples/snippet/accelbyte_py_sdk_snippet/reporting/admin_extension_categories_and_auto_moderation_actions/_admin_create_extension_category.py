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

Example: '{"extensionCategory": "GZneoO00UbXQEoK7", "extensionCategoryName": "5dHC077PC7fLbjz4", "serviceSource": "HSwndLWB9BaToYTi"}'
"""

result, error = admin_create_extension_category(
    body=body,
    x_additional_headers=x_additional_headers,
)
