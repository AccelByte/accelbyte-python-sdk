import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import admin_get_list_personal_data_request
from accelbyte_py_sdk.api.gdpr.models import ModelsListPersonalDataResponse
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = admin_get_list_personal_data_request(
    limit=limit,
    offset=offset,
    request_date=request_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
