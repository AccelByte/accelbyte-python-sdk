import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import purge_expired_section
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = purge_expired_section(
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
