import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import import_rewards
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = import_rewards(
    replace_existing=replace_existing,
    file=file,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
