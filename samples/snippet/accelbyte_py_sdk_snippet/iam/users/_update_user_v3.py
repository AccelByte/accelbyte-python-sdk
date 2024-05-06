import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_user_v3
from accelbyte_py_sdk.api.iam.models import ModelPublicUserUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelPublicUserUpdateRequestV3
avatar_url: str
country: str
date_of_birth: str
display_name: str
language_tag: str
unique_display_name: str
user_name: str

Example: '{"avatarUrl": "ODN9XPPoK9ZfnDp1", "country": "rMQS8XyO09oDqS5O", "dateOfBirth": "UbaUpr8DIFPrLVQx", "displayName": "mFV2tOoZfWKebygt", "languageTag": "h2ZMRDzF2NXurAyE", "uniqueDisplayName": "gLmDYY53kHXQ18Qy", "userName": "ysI5nnzq48Is94o0"}'
"""

result, error = update_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
