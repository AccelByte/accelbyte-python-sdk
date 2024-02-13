import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import request_token_exchange_code_v3
from accelbyte_py_sdk.api.iam.models import OauthmodelTargetTokenCodeResponse

result, error = request_token_exchange_code_v3(
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
