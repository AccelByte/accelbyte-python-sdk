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

Example: '{"catalogType": "ITEM", "fieldsToBeIncluded": ["IAErVcee5rMylnMO", "h0ENUQ1grWfqBaOG", "dAzV9MApC3aGmR5Z"], "idsToBeExported": ["G8aLHZ5HCqb1IwAZ", "2NKv4LLx7ZkLAwEI", "zXvIvp0MxznMSgOd"], "storeId": "pZfYzzQAs1uiGD1y"}'
"""

result, error = export_store_by_csv(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
