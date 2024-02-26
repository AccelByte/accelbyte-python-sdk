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

Example: '[{"collectionId": "6oa1ENKNdFF7Z8r7", "endDate": "1972-04-16T00:00:00Z", "grantedCode": "f1rX4PvxJrXADFB9", "itemId": "QtGcVN9bDa72Pmwi", "itemNamespace": "LLQujLwWU6aYEfzt", "language": "lU", "origin": "Steam", "quantity": 58, "region": "1LHTCeBXla5NtWLR", "source": "PURCHASE", "startDate": "1985-02-01T00:00:00Z", "storeId": "Jgxou7QN09pUrLMc"}, {"collectionId": "Shx2MWKHosNbGej5", "endDate": "1971-05-04T00:00:00Z", "grantedCode": "fqTmdINXANDGl01q", "itemId": "hh41ujC0PF7DT2AS", "itemNamespace": "JaFmxXeBIklBvHlj", "language": "Hr", "origin": "Other", "quantity": 37, "region": "ZBTyhYR0iCYDZn4W", "source": "REDEEM_CODE", "startDate": "1989-04-19T00:00:00Z", "storeId": "16755eNuhC80DOoV"}, {"collectionId": "RBNb55ZX0eoBrqbe", "endDate": "1978-07-22T00:00:00Z", "grantedCode": "hvd9GxjDtmID0ZJS", "itemId": "I8aLtsSt0jB2H5tD", "itemNamespace": "s7JJ3dI6i8PTaFpM", "language": "qTW_ZZlh", "origin": "Twitch", "quantity": 3, "region": "s2cteIEOsk1pV9PI", "source": "REWARD", "startDate": "1996-08-25T00:00:00Z", "storeId": "aCULUfzi6wrsipvN"}]'
"""

result, error = grant_user_entitlement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
