import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import defeature_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemInfo

result, error = defeature_item(
    feature=feature,
    item_id=item_id,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)