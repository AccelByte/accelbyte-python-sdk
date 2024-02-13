import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_list_views
from accelbyte_py_sdk.api.platform.models import ViewInfo

result, error = public_list_views(
    user_id=user_id,
    language=language,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
