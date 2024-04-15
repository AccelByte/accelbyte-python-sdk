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

Example: '{"catalogType": "VIEW", "fieldsToBeIncluded": ["jxj4q40qGKKrR2hB", "43rUyUxvqlGhxT5c", "gft1Z9L3slRprmmz"], "idsToBeExported": ["AqsqkOjYdVVgKb3c", "tOmKuAbCcHnYk5A6", "f97NkqYeFenlfM6S"], "storeId": "cb3RCXHzFXZ9vVsK"}'
"""

result, error = export_store_by_csv(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
