import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import upload_url_get

result, error = upload_url_get(
    x_additional_headers=x_additional_headers,
)
