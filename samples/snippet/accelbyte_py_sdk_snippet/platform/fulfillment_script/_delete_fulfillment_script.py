import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_fulfillment_script

result, error = delete_fulfillment_script(
    id_=id_,
    x_additional_headers=x_additional_headers,
)
