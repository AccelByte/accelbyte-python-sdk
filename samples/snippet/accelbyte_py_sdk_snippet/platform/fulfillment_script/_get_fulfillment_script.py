import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_fulfillment_script
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FulfillmentScriptInfo

result, error = get_fulfillment_script(
    id_=id_,
    x_additional_headers=x_additional_headers,
)
