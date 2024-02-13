import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_published_store_backup
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import StoreBackupInfo

result, error = get_published_store_backup(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
