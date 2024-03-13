import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.challenge import get_challenges
from accelbyte_py_sdk.api.challenge.models import IamErrorResponse
from accelbyte_py_sdk.api.challenge.models import ModelListChallengeResponse
from accelbyte_py_sdk.api.challenge.models import ResponseError

result, error = get_challenges(
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
