import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import admin_request_data_retrieval
from accelbyte_py_sdk.api.gdpr.models import ModelsDataRetrievalResponse
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = admin_request_data_retrieval(
    user_id=user_id,
    password=password,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
