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

Example: '[{"collectionId": "VfNvjL4zRx3fBBIg", "endDate": "1973-11-08T00:00:00Z", "grantedCode": "vlMfZBeK9qtEGxPl", "itemId": "ZUr6NunPSIV1Hkno", "itemNamespace": "vE1wRx6idTJ9B2tO", "language": "Lh-vXhc-387", "origin": "IOS", "quantity": 14, "region": "5IyezdKbRTiLHz9R", "source": "ACHIEVEMENT", "startDate": "1987-01-28T00:00:00Z", "storeId": "Z3cGboBa44pDoOxI"}, {"collectionId": "lpCtj9mRUMLXK0uq", "endDate": "1990-01-17T00:00:00Z", "grantedCode": "5SWt1wQ63bna3Ybn", "itemId": "X4wr0lchr03ljDuE", "itemNamespace": "5tj6zuVVvjfNlH5w", "language": "wzsc_yalB", "origin": "Xbox", "quantity": 97, "region": "AFhe2uEiADjxSTqK", "source": "IAP", "startDate": "1992-10-08T00:00:00Z", "storeId": "2nncWgSVqxyCDemG"}, {"collectionId": "hhr3icy0fN3TsqLv", "endDate": "1979-06-16T00:00:00Z", "grantedCode": "QRGHSBJKSWUNMQtF", "itemId": "8cyyjNe31aPWTaXo", "itemNamespace": "Pp1BdMKABl2JN72Y", "language": "BP-AIqL", "origin": "Epic", "quantity": 100, "region": "KCoFZZphhN7dm9Lu", "source": "GIFT", "startDate": "1974-05-21T00:00:00Z", "storeId": "1SiCho2yjcQwG551"}]'
"""

result, error = grant_user_entitlement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
