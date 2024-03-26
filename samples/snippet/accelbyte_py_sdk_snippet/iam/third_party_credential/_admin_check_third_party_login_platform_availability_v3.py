import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import (
    admin_check_third_party_login_platform_availability_v3,
)
from accelbyte_py_sdk.api.iam.models import ModelCheckAvailabilityResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_check_third_party_login_platform_availability_v3(
    platform_id=platform_id,
    x_additional_headers=x_additional_headers,
)
