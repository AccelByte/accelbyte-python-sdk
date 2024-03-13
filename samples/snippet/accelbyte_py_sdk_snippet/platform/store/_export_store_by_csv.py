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

Example: '{"catalogType": "ITEM", "fieldsToBeIncluded": ["NbRBfhMDShBqgR7f", "3NEBFAaTDxF9cfXB", "CxeBLM89S626CjK6"], "idsToBeExported": ["HfFIuXuxAweoxeqm", "0IuCwQDNEn6EQnMp", "YG62WjvmhNiuYp2r"], "storeId": "qv2nNhsnFXT2Xl8R"}'
"""

result, error = export_store_by_csv(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
