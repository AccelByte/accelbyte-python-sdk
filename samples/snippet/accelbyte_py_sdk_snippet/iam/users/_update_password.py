import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_password
from accelbyte_py_sdk.api.iam.models import ModelUserPasswordUpdateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserPasswordUpdateRequest
language_tag: str
new_password: str
old_password: str

Example: '{"LanguageTag": "Mhfq4qaITXC3rrtE", "NewPassword": "tI2Ff9q0skPLvZFA", "OldPassword": "hv0YEhkg3u9mGT04"}'
"""

result, error = update_password(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
