import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_client_secret
from accelbyte_py_sdk.api.iam.models import ClientmodelClientUpdateSecretRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelClientUpdateSecretRequest
new_secret: str

Example: '{"NewSecret": "X537b3V50UAXGIE6"}'
"""

result, error = update_client_secret(
    body=body,
    client_id=client_id,
    x_additional_headers=x_additional_headers,
)
