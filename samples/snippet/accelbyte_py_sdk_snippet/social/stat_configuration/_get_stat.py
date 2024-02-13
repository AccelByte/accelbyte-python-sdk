import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_stat
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatInfo

result, error = get_stat(
    stat_code=stat_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
