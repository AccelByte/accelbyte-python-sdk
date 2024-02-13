import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_all_legal_policies
from accelbyte_py_sdk.api.legal.models import RetrieveBasePolicyResponse

result, error = retrieve_all_legal_policies(
    x_additional_headers=x_additional_headers,
)
