import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_view
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullViewInfo

result, error = get_view(
    view_id=view_id,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
