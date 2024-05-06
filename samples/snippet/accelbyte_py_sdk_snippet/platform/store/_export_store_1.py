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

Example: '{"itemIds": ["3eO6p5Mz1ELiBhCB", "kGjZDH74R4m8jXO8", "sScPMiaR0eSwTovp"]}'
"""

result, error = export_store_1(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
