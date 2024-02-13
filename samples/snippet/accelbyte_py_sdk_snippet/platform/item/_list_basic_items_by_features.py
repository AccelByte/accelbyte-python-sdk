import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import list_basic_items_by_features
from accelbyte_py_sdk.api.platform.models import BasicItem

result, error = list_basic_items_by_features(
    active_only=active_only,
    features=features,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
