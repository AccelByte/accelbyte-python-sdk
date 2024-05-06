import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_xsolla_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentMerchantConfigInfo
from accelbyte_py_sdk.api.platform.models import XsollaConfig

"""
body:
Definition: XsollaConfig
api_key: str
flow_completion_url: str
merchant_id: int
project_id: int
project_secret_key: str

Example: '{"apiKey": "eZ7KudfaGxh2ziNX", "flowCompletionUrl": "lxWt9p4jN2xZJ2vr", "merchantId": 0, "projectId": 7, "projectSecretKey": "Trq7s5ElMRPgvbz9"}'
"""

result, error = update_xsolla_config(
    id_=id_,
    body=body,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
