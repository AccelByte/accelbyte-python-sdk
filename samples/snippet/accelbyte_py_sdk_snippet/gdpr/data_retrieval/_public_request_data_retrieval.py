import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gdpr import public_request_data_retrieval
from accelbyte_py_sdk.api.gdpr.models import ModelsDataRetrievalResponse
from accelbyte_py_sdk.api.gdpr.models import ResponseError

result, error = public_request_data_retrieval(
    password=password,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
