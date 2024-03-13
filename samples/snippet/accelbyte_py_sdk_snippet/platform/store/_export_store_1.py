import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import export_store_1
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ExportStoreRequest

"""
body:
Definition: ExportStoreRequest
item_ids: List[str]

Example: '{"itemIds": ["ZFkREXNwmm7esV22", "Txf0puxLfRt2kgkz", "PXqxRaRTWE20Y5d9"]}'
"""

result, error = export_store_1(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
