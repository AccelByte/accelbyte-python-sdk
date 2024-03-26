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

Example: '{"itemIds": ["16Ps7vEory3cpqn6", "S7aJFGRdmoTcB246", "bV3e3vZWnLFvAVfF"]}'
"""

result, error = export_store_1(
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
