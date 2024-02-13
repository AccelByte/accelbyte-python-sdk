import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import rollback_published_store
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import StoreInfo

result, error = rollback_published_store(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
