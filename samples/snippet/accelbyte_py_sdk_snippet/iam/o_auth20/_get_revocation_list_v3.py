import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_revocation_list_v3
from accelbyte_py_sdk.api.iam.models import OauthapiRevocationList
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_revocation_list_v3(
    x_additional_headers=x_additional_headers,
)
