import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import validate_existed_playstation_iap_config
from accelbyte_py_sdk.api.platform.models import TestResult

result, error = validate_existed_playstation_iap_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
