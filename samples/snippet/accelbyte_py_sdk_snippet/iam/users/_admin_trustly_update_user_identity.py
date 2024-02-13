import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_trustly_update_user_identity
from accelbyte_py_sdk.api.iam.models import ModelUserIdentityUpdateRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserIdentityUpdateRequestV3
email_address: str
password: str

Example: '{"emailAddress": "8cR1cq3DrHKDJA81", "password": "zuF2X25NBruN72TH"}'
"""

result, error = admin_trustly_update_user_identity(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
