import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_fulfillment_script
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FulfillmentScriptInfo
from accelbyte_py_sdk.api.platform.models import FulfillmentScriptUpdate

"""
body:
Definition: FulfillmentScriptUpdate
grant_days: str

Example: '{"grantDays": "UR6jqtQMrvzMW17W"}'
"""

result, error = update_fulfillment_script(
    id_=id_,
    body=body,
    x_additional_headers=x_additional_headers,
)
