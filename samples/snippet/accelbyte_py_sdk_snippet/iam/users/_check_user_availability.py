import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import check_user_availability
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = check_user_availability(
    field=field,
    query=query,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
