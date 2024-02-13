import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import list_fulfillment_scripts
from accelbyte_py_sdk.api.platform.models import FulfillmentScriptInfo

result, error = list_fulfillment_scripts(
    x_additional_headers=x_additional_headers,
)
