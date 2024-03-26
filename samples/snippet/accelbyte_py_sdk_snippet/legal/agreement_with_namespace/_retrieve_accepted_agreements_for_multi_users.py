import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_accepted_agreements_for_multi_users
from accelbyte_py_sdk.api.legal.models import UserAgreementsResponse
from accelbyte_py_sdk.api.legal.models import UsersAgreementsRequest

"""
body:
Definition: UsersAgreementsRequest
current_published_only: bool
user_ids: List[str]

Example: '{"currentPublishedOnly": false, "userIds": ["rm0WBxUMU0OXHMsj", "tv44bBYtle2kQVku", "1l7d7sD4i1iyKpuL"]}'
"""

result, error = retrieve_accepted_agreements_for_multi_users(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
