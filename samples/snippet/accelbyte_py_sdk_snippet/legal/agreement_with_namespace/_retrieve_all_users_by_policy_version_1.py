import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_all_users_by_policy_version_1
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import PagedRetrieveUserAcceptedAgreementResponse

result, error = retrieve_all_users_by_policy_version_1(
    policy_version_id=policy_version_id,
    convert_game_user_id=convert_game_user_id,
    keyword=keyword,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
