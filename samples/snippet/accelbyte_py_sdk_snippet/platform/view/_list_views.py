import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import list_views
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ListViewInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = list_views(
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
