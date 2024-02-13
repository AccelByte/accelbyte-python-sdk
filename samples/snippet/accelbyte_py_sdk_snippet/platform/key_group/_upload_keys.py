import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import upload_keys
from accelbyte_py_sdk.api.platform.models import BulkOperationResult
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = upload_keys(
    key_group_id=key_group_id,
    file=file,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
