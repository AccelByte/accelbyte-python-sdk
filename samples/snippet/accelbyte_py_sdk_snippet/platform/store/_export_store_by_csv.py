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

Example: '{"catalogType": "ITEM", "fieldsToBeIncluded": ["SifwC8SOP8RpB8XY", "ZUT31ZTAIKCF0tRO", "8DYWBk41FDSbbE2b"], "idsToBeExported": ["Cd1F97QPsXBCV2Tx", "mWVkH25geDWqltmR", "LdGTh0BYvB9gCtJZ"], "storeId": "VVsLKfNx18xwqA4Z"}'
"""

result, error = export_store_by_csv(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
