import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_query_my_parties
from accelbyte_py_sdk.api.session.models import ApimodelsPartyQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = public_query_my_parties(
    order=order,
    order_by=order_by,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
