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

Example: '[{"collectionId": "gTD5ZJxjb0onRqeK", "endDate": "1971-11-04T00:00:00Z", "grantedCode": "aBBsgOXrxiZTmUDd", "itemId": "N10KURUHJ7WdTOMd", "itemNamespace": "i0e4oGJ1uzuP1PbJ", "language": "kY", "origin": "Other", "quantity": 45, "region": "jl1OMKNRN0lhRou6", "source": "PROMOTION", "startDate": "1989-04-26T00:00:00Z", "storeId": "XbuBdkgMSAQ566vy"}, {"collectionId": "HVuhdCr9TSFopieW", "endDate": "1980-11-06T00:00:00Z", "grantedCode": "ymC73v7c6nyEoqy0", "itemId": "aEFD44PoeAeJtEWf", "itemNamespace": "j17YITT6h5f91mXC", "language": "baq_pL", "origin": "System", "quantity": 26, "region": "E8xDqqIi4w4HOhFt", "source": "REFERRAL_BONUS", "startDate": "1993-07-28T00:00:00Z", "storeId": "xuYVEpoT23dP6aRe"}, {"collectionId": "EPB4NJNsH4BjFmg2", "endDate": "1990-10-02T00:00:00Z", "grantedCode": "QYwOzIGeqBwhXQZD", "itemId": "X13PR7xQYBUEjTrc", "itemNamespace": "RoS5eMcsCjTgLWtT", "language": "gmB", "origin": "Nintendo", "quantity": 35, "region": "9PtBDjillQRfSeza", "source": "OTHER", "startDate": "1988-06-30T00:00:00Z", "storeId": "RWGe1GOxS29SKylL"}]'
"""

result, error = grant_user_entitlement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
