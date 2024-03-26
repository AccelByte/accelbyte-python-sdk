import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_client_secret_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelV3ClientUpdateSecretRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ClientmodelV3ClientUpdateSecretRequest
new_secret: str

Example: '{"newSecret": "a5DDhjKyUj2zV6sl"}'
"""

result, error = admin_update_client_secret_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
