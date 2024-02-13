import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import anonymize_user_agreement
from accelbyte_py_sdk.api.legal.models import ErrorEntity

result, error = anonymize_user_agreement(
    user_id=user_id,
    x_additional_headers=x_additional_headers,
)
