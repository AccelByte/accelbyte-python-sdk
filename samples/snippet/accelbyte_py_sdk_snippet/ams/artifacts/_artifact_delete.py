import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import artifact_delete
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = artifact_delete(
    artifact_id=artifact_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
