import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_query_parties
from accelbyte_py_sdk.api.session.models import ApimodelsPartyQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_query_parties(
    is_soft_deleted=is_soft_deleted,
    joinability=joinability,
    key=key,
    leader_id=leader_id,
    limit=limit,
    member_id=member_id,
    member_status=member_status,
    offset=offset,
    order=order,
    order_by=order_by,
    party_id=party_id,
    value=value,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
