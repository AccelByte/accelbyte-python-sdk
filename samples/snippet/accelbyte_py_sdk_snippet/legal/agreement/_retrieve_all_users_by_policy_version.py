import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_all_users_by_policy_version
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import PagedRetrieveUserAcceptedAgreementResponse

result, error = retrieve_all_users_by_policy_version(
    policy_version_id=policy_version_id,
    keyword=keyword,
    limit=limit,
    offset=offset,
    x_additional_headers=x_additional_headers,
)
