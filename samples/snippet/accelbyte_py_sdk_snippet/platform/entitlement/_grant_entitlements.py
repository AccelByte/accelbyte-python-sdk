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

Example: '{"entitlementGrantList": [{"collectionId": "1MtNzV6DJJc3glxl", "endDate": "1980-07-20T00:00:00Z", "grantedCode": "M9JcH636OBEQRzpi", "itemId": "veHDxRyCIkMZQAq0", "itemNamespace": "G0qK3zBlGEN0CCSU", "language": "Pe", "origin": "Playstation", "quantity": 10, "region": "EnJM8OfprkkldQ97", "source": "REDEEM_CODE", "startDate": "1992-02-25T00:00:00Z", "storeId": "JwbrvWrp9HSz3lY7"}, {"collectionId": "UbtObjoWPz2AQhEL", "endDate": "1976-10-29T00:00:00Z", "grantedCode": "Ckc436tqBibNpk9o", "itemId": "8wRI35EOcelHRiET", "itemNamespace": "XhqsIm4hdGSUM4x3", "language": "No", "origin": "Twitch", "quantity": 82, "region": "K0wAQBapS685mk8o", "source": "OTHER", "startDate": "1976-03-06T00:00:00Z", "storeId": "1cdPdULSAxZGsIrx"}, {"collectionId": "cWbbSA2OuQ433fQK", "endDate": "1983-02-25T00:00:00Z", "grantedCode": "Wzx0qpGRjt68N93O", "itemId": "Uf5IfPikQ47KjN76", "itemNamespace": "tGKHwAvzUl6pb6hJ", "language": "EuV-IC", "origin": "Nintendo", "quantity": 14, "region": "NNQDKfxQtW5yZEXT", "source": "IAP", "startDate": "1996-01-26T00:00:00Z", "storeId": "t7w1ZmL24lEnT7eC"}], "userIds": ["fxaL04fX4z1pSNDd", "iWwvVGiSdluUqm4z", "h26LAcFqGjo3rtzG"]}'
"""

result, error = grant_entitlements(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
