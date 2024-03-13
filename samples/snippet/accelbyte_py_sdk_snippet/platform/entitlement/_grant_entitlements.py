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

Example: '{"entitlementGrantList": [{"collectionId": "3THLkHYAAKghF32p", "endDate": "1972-08-08T00:00:00Z", "grantedCode": "wPImNQPoiuGeCYY8", "itemId": "mlmdko1nJDGuhxxF", "itemNamespace": "Hopvr5RQmXI6i1Fj", "language": "zXc_FqsQ_eh", "origin": "Twitch", "quantity": 53, "region": "HuRirTz06LvSafN4", "source": "PURCHASE", "startDate": "1991-07-19T00:00:00Z", "storeId": "CWhAgxZAtTph6OBn"}, {"collectionId": "P0hXiuJQG2Uazfxb", "endDate": "1991-07-08T00:00:00Z", "grantedCode": "g4dwu1RzossBGnGm", "itemId": "5nRSgeEogqbzk2SS", "itemNamespace": "8yJ8WzpuYeEWGQpN", "language": "Ua-825", "origin": "Nintendo", "quantity": 58, "region": "5zm86VrH8WSUI3SR", "source": "ACHIEVEMENT", "startDate": "1990-12-12T00:00:00Z", "storeId": "K6cw3DVivZDOyIkN"}, {"collectionId": "xtPgx0RxuNHIOw2V", "endDate": "1984-10-01T00:00:00Z", "grantedCode": "Ho6eUc0hZVqxTePQ", "itemId": "VsLCg8IoaQPDhAvj", "itemNamespace": "xvW2Xfud5aPJDuwE", "language": "RoP", "origin": "Playstation", "quantity": 28, "region": "aULVFcC0DS9mN5R0", "source": "ACHIEVEMENT", "startDate": "1977-01-24T00:00:00Z", "storeId": "rtAOmfpqP5rH7Wtx"}], "userIds": ["tsWMsqyNvyad7LHp", "PsUmhhNlzlSZZq7H", "P9H8nQpbomqs0zIn"]}'
"""

result, error = grant_entitlements(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
