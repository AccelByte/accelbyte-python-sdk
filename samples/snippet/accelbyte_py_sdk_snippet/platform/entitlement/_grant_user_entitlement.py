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

Example: '[{"collectionId": "YC8KLpptL2aRkNUl", "endDate": "1999-07-14T00:00:00Z", "grantedCode": "aRNd59EuBCqvRkUF", "itemId": "MTYNBRLgiS1LNIX6", "itemNamespace": "5XdjUog20EehcSto", "language": "bRM_vEzx", "origin": "Steam", "quantity": 50, "region": "xLOUTz9nIYd6GTJa", "source": "REWARD", "startDate": "1994-11-20T00:00:00Z", "storeId": "ILyQmBATcAWlAQ6n"}, {"collectionId": "kbhgLZruMVCuU2Se", "endDate": "1990-02-25T00:00:00Z", "grantedCode": "aCyKpIQvH8lKpfuX", "itemId": "xGWtopx5u210f87H", "itemNamespace": "HSNx8rQXMb3lF8OL", "language": "MpkA", "origin": "Playstation", "quantity": 46, "region": "AkW6h0ZpflUK2o3s", "source": "IAP", "startDate": "1972-05-21T00:00:00Z", "storeId": "GINtftpIqJHGxfaB"}, {"collectionId": "YDreHOOzdKvF9yei", "endDate": "1977-09-19T00:00:00Z", "grantedCode": "OebalfGiP9imdQqE", "itemId": "b3dBJ1i4Pmz8dePy", "itemNamespace": "Vj3CpL01SgCrAVqR", "language": "YHhM_aE", "origin": "IOS", "quantity": 57, "region": "sDdXENknfVEQswzQ", "source": "REDEEM_CODE", "startDate": "1995-08-14T00:00:00Z", "storeId": "HlY2K54Zhca8F3Gj"}]'
"""

result, error = grant_user_entitlement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
