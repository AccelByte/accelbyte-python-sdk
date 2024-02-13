import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import delete_client_by_namespace
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = delete_client_by_namespace(
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
