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

Example: '{"apiKey": "aolbsgPpjcs4ru6I", "flowCompletionUrl": "2yEuhimWVgcsES7u", "merchantId": 77, "projectId": 100, "projectSecretKey": "64sw1nqMoue3QFrq"}'
"""

result, error = update_xsolla_config(
    id_=id_,
    body=body,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
