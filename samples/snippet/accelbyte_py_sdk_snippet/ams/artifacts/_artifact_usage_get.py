import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import artifact_usage_get
from accelbyte_py_sdk.api.ams.models import ApiArtifactUsageResponse
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = artifact_usage_get(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
