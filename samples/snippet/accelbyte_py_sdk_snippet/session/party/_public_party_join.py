import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_party_join
from accelbyte_py_sdk.api.session.models import ApimodelsPartySessionResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = public_party_join(
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
