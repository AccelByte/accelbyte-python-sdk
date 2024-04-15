import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import grant_user_entitlement
from accelbyte_py_sdk.api.platform.models import EntitlementGrant
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import StackableEntitlementInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
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

Example: '[{"collectionId": "rpEVUhWEwfmJxj4j", "endDate": "1981-04-13T00:00:00Z", "grantedCode": "IhKTidKxgarqX0Sw", "itemId": "jDF1xt7hOav4QWfV", "itemNamespace": "0TLxCZjWxdSE1sQ6", "language": "mpxG_nrYg_sZ", "origin": "Playstation", "quantity": 88, "region": "ofoyOKchRwBs5g2N", "source": "PROMOTION", "startDate": "1999-09-26T00:00:00Z", "storeId": "45YLxiwRmyv3IlZm"}, {"collectionId": "QjzgARvjxntYYab2", "endDate": "1983-10-27T00:00:00Z", "grantedCode": "OdLTWQJJCCiKeS5v", "itemId": "v9KMR5u97cQZFaLS", "itemNamespace": "tKVAUfgWc7hXNnhp", "language": "Ik", "origin": "Xbox", "quantity": 3, "region": "AvYA2wNmqRAjb4AA", "source": "ACHIEVEMENT", "startDate": "1988-03-30T00:00:00Z", "storeId": "XsPrVPCzcCDu0hCz"}, {"collectionId": "HL0Ah9M8oospfTnD", "endDate": "1988-08-27T00:00:00Z", "grantedCode": "N6hZMoiqO89rmgyo", "itemId": "n1vQ6R2EzTTkyWVK", "itemNamespace": "LCaL0pQ093dP6dzb", "language": "BQxl-482", "origin": "Nintendo", "quantity": 95, "region": "B9rfO9qXxKPKCdby", "source": "PURCHASE", "startDate": "1984-02-20T00:00:00Z", "storeId": "UavcUltE8zKoRZxt"}]'
"""

result, error = grant_user_entitlement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
