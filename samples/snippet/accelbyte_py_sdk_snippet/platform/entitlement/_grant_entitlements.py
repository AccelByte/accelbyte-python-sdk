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

Example: '{"entitlementGrantList": [{"collectionId": "XMWp8ldjJYkzjPp8", "endDate": "1984-12-15T00:00:00Z", "grantedCode": "Nlm5DuP1qlTXdJkT", "itemId": "pocm0z09fNohSjwM", "itemNamespace": "jdadogOfDmynAiER", "language": "kjzx-LNea-JQ", "origin": "Playstation", "quantity": 0, "region": "uIkdxYvbI1ulJWU5", "source": "PROMOTION", "startDate": "1979-01-25T00:00:00Z", "storeId": "Juxe11lLLRRLkyfy"}, {"collectionId": "V2UiW4gK5WrnUHeR", "endDate": "1976-09-26T00:00:00Z", "grantedCode": "5NU8DYeLWxBrV2Jk", "itemId": "DdcKVF8DVDQW4G2F", "itemNamespace": "oLwmnhupKSpBkuEo", "language": "eMfy_BkSh-HU", "origin": "System", "quantity": 40, "region": "oVmRI32Dsi3a91Tz", "source": "ACHIEVEMENT", "startDate": "1993-03-17T00:00:00Z", "storeId": "EXS1c3hLsnXkHIp8"}, {"collectionId": "pK8AN4NYeDvDZzaM", "endDate": "1986-08-08T00:00:00Z", "grantedCode": "9P3dO8vyQSNWBQnO", "itemId": "grOgplxjxk0eBrso", "itemNamespace": "KPLkokHV8OIkXblH", "language": "ZiI", "origin": "Epic", "quantity": 90, "region": "SegAkkaKqkvaG6Iw", "source": "REWARD", "startDate": "1991-09-14T00:00:00Z", "storeId": "QTZ5OmKTinFDOGhI"}], "userIds": ["mDgKP674T7dbBXWB", "bzrOXh36Mj2hNAFH", "s0ebs6cCHAiIaYuX"]}'
"""

result, error = grant_entitlements(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
