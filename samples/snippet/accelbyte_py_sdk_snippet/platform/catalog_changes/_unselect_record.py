import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import unselect_record
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = unselect_record(
    change_id=change_id,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
