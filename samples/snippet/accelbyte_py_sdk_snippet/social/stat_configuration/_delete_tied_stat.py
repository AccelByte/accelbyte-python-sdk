import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import delete_tied_stat
from accelbyte_py_sdk.api.social.models import ErrorEntity

result, error = delete_tied_stat(
    stat_code=stat_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
