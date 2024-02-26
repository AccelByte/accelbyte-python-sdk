import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import grant_entitlements
from accelbyte_py_sdk.api.platform.models import BulkEntitlementGrantRequest
from accelbyte_py_sdk.api.platform.models import BulkEntitlementGrantResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: BulkEntitlementGrantRequest
entitlement_grant_list: List[EntitlementGrant]
Definition: List[EntitlementGrant]
    collection_id: str
    end_date: str
    granted_code: str
    item_id: str
    item_namespace: str
    language: str
    origin: str
    quantity: int
    region: str
    source: str
    start_date: str
    store_id: str
user_ids: List[str]

Example: '{"entitlementGrantList": [{"collectionId": "WdKVVXDjSyg6Kgrf", "endDate": "1991-06-27T00:00:00Z", "grantedCode": "PmO4fREjZFehr92L", "itemId": "R5A4dGsREWXhUOiU", "itemNamespace": "sdwMIktVPvnkNt4U", "language": "Ox", "origin": "Steam", "quantity": 78, "region": "M28R7wm61s952Y28", "source": "IAP", "startDate": "1985-01-09T00:00:00Z", "storeId": "SDAUEW9leTcBEKql"}, {"collectionId": "phFSj1i2Shxjk8Bd", "endDate": "1998-07-02T00:00:00Z", "grantedCode": "SxSztWzp1CsDFlns", "itemId": "JtCjXrWfEu4PDOjQ", "itemNamespace": "KhgzMemYqYjlIRnX", "language": "aLgF", "origin": "Nintendo", "quantity": 78, "region": "3bRN54TeydeltzkV", "source": "IAP", "startDate": "1978-08-21T00:00:00Z", "storeId": "T4so444ihplq85v2"}, {"collectionId": "FwRwI9djNL4U5gjh", "endDate": "1999-10-02T00:00:00Z", "grantedCode": "Dox2mUlQemK1R8Sq", "itemId": "1UPaFHqV49Hcj4GJ", "itemNamespace": "uuXK0T7CbwSKVPlH", "language": "xkZY-Wibs_PN", "origin": "Nintendo", "quantity": 6, "region": "lOD1Rj78LlDag6mB", "source": "ACHIEVEMENT", "startDate": "1987-04-10T00:00:00Z", "storeId": "t1vqNHfVyu5MwY84"}], "userIds": ["CSgSN1BXAl0NFKUP", "OezERF5xNajBXiOA", "kASrgOvjnXzkZIxH"]}'
"""

result, error = grant_entitlements(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
