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

Example: '{"catalogType": "ITEM", "fieldsToBeIncluded": ["EqhkujQHLzysdSaf", "Wt2Bqvky1QmiJNGd", "AAfGkAHCzw16Bmcb"], "idsToBeExported": ["ueFWvx4pdV1OHzwD", "xE96fQMzSMUV5s8z", "oY96jtUGTs2YdTv9"], "storeId": "kMhASHVTz8lu5A4d"}'
"""

result, error = export_store_by_csv(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
