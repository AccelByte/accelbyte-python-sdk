import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import export_store_by_csv
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ExportStoreToCSVRequest

"""
body:
Definition: ExportStoreToCSVRequest
catalog_type: str
fields_to_be_included: List[str]
ids_to_be_exported: List[str]
store_id: str

Example: '{"catalogType": "CATEGORY", "fieldsToBeIncluded": ["u8uLhTFhjdFJoddy", "SkpSyNtdS15VJ0RL", "aJEGNvF06GdCqPFf"], "idsToBeExported": ["1s7D926jKCycRCh8", "wWarB1J8TACwtl5F", "wOi2RZRw2EU7ddWd"], "storeId": "6ouhb4xgaYg922Ff"}'
"""

result, error = export_store_by_csv(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
