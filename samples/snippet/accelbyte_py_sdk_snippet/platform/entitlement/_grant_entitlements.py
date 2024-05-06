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

Example: '{"entitlementGrantList": [{"collectionId": "InkyKP5tMSu3HVgN", "endDate": "1996-11-21T00:00:00Z", "grantedCode": "IC4Nqdhb1LRuGgLn", "itemId": "wEES5ZClHZPsBpuJ", "itemNamespace": "3BmUekdJMEKw6f2g", "language": "hJX", "origin": "Other", "quantity": 11, "region": "6s0T7JsNoBbBnpZW", "source": "REFERRAL_BONUS", "startDate": "1996-10-11T00:00:00Z", "storeId": "3ilZGI2ClKmbS6gM"}, {"collectionId": "lB3hnAnGCrulIQjW", "endDate": "1976-12-25T00:00:00Z", "grantedCode": "7O8tLGBIifF97ole", "itemId": "mrhFE6atViqrXupz", "itemNamespace": "GBmPgvtXs8GRWC0K", "language": "rgmt-zVFz-sP", "origin": "Steam", "quantity": 53, "region": "FaBLKlS5ePeI7xLM", "source": "ACHIEVEMENT", "startDate": "1987-07-05T00:00:00Z", "storeId": "Rs2IKn3UQeAcK8Al"}, {"collectionId": "s2fpB7WmIt4Okt4W", "endDate": "1990-11-04T00:00:00Z", "grantedCode": "pdNT5KLRLENqt0sK", "itemId": "A4DHZfY8RpYhzYlO", "itemNamespace": "z2QOZPFvNVKimao1", "language": "dxX-co", "origin": "Playstation", "quantity": 1, "region": "2TlD5fzUa04qGXVF", "source": "IAP", "startDate": "1998-09-07T00:00:00Z", "storeId": "QdPLTG9zFfFFS4Oc"}], "userIds": ["ix2Fljnq7TB9TZmc", "zOaMa8opF3LSSHxr", "nTm3fLMLXYq4t4QN"]}'
"""

result, error = grant_entitlements(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
