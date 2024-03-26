import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_client
from accelbyte_py_sdk.api.iam.models import ClientmodelClientResponse
from accelbyte_py_sdk.api.iam.models import ClientmodelClientUpdateRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelClientUpdateRequest
client_name: str
redirect_uri: str
two_factor_enabled: bool

Example: '{"ClientName": "rZ5FG0szqfADAsPu", "RedirectUri": "IJH18aj9M4TO3Jdt", "TwoFactorEnabled": true}'
"""

result, error = update_client(
    body=body,
    client_id=client_id,
    x_additional_headers=x_additional_headers,
)
