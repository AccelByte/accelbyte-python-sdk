import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import create_fulfillment_script
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FulfillmentScriptCreate
from accelbyte_py_sdk.api.platform.models import FulfillmentScriptInfo

"""
body:
Definition: FulfillmentScriptCreate
grant_days: str

Example: '{"grantDays": "BA05CxrOKutp7rOb"}'
"""

result, error = create_fulfillment_script(
    id_=id_,
    body=body,
    x_additional_headers=x_additional_headers,
)
