import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_xray_match
from accelbyte_py_sdk.api.sessionhistory.models import ApimodelsXRayMatchesQueryResponse
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_xray_match(
    match_id=match_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
