import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.reporting import public_get_reasons
from accelbyte_py_sdk.api.reporting.models import RestapiErrorResponse
from accelbyte_py_sdk.api.reporting.models import RestapiPublicReasonListResponse

result, error = public_get_reasons(
    group=group,
    limit=limit,
    offset=offset,
    title=title,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
