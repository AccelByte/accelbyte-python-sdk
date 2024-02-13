import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_revocation_list
from accelbyte_py_sdk.api.iam.models import OauthapiRevocationList

result, error = get_revocation_list(
    x_additional_headers=x_additional_headers,
)
