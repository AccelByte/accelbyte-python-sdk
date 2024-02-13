import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import test_pay_pal_config_by_id
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import TestResult

result, error = test_pay_pal_config_by_id(
    id_=id_,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
