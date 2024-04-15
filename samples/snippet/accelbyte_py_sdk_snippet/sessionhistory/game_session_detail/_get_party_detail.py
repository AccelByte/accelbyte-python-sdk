import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import get_party_detail
from accelbyte_py_sdk.api.sessionhistory.models import ApimodelsPartyDetail
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = get_party_detail(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
