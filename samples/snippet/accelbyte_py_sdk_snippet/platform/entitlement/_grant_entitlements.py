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

Example: '{"entitlementGrantList": [{"collectionId": "2E17b9o7tqhzGDt1", "endDate": "1971-03-28T00:00:00Z", "grantedCode": "QDDeaJ67yObBS0Wr", "itemId": "lag2VBJ4VbGjQ9gr", "itemNamespace": "vU3sL0qy5iKfmx2b", "language": "US-930", "origin": "Oculus", "quantity": 80, "region": "KhI4goREx2zZICRP", "source": "PURCHASE", "startDate": "1995-01-13T00:00:00Z", "storeId": "bjbhBU69TJFQ2mAW"}, {"collectionId": "mS8k0h8LWLcdplbq", "endDate": "1975-07-31T00:00:00Z", "grantedCode": "2AfGOymZuR2nM38W", "itemId": "G14PhWxau1CFmjaH", "itemNamespace": "MqQd6dpTvHhNWoHI", "language": "RzkE-GbrZ", "origin": "Xbox", "quantity": 67, "region": "yfFZbMp7Otd4Nrok", "source": "ACHIEVEMENT", "startDate": "1982-03-16T00:00:00Z", "storeId": "CNrq8vrNf9ClzVGC"}, {"collectionId": "4x0dz67bhnSZygDs", "endDate": "1993-10-07T00:00:00Z", "grantedCode": "nGMp9EhWCjjX5xJM", "itemId": "HJj5EthD5orcH0PI", "itemNamespace": "mqvUWMtB5nYtXmjR", "language": "wqU_245", "origin": "Other", "quantity": 42, "region": "TgYpcym7V7Dn1yL7", "source": "PURCHASE", "startDate": "1971-12-30T00:00:00Z", "storeId": "xD0y7DhjuTG5bH5W"}], "userIds": ["mBvFucuVj0Dmte9Y", "awxfLVi4iMtH1tCY", "C9D8S1wwywkxx5Xm"]}'
"""

result, error = grant_entitlements(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
