import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import list_keys
from accelbyte_py_sdk.api.platform.models import KeyPagingSliceResult

result, error = list_keys(
    key_group_id=key_group_id,
    limit=limit,
    offset=offset,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
