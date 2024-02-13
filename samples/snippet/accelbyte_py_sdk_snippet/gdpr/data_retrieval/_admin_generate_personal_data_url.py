import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import admin_generate_personal_data_url
from accelbyte_py_sdk.api.gdpr.models import ModelsUserDataURL
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = admin_generate_personal_data_url(
    password=password,
    request_date=request_date,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
