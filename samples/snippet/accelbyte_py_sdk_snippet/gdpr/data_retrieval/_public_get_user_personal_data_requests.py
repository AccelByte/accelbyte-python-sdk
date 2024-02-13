import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import public_get_user_personal_data_requests
from accelbyte_py_sdk.api.gdpr.models import ModelsUserPersonalDataResponse
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = public_get_user_personal_data_requests(
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
