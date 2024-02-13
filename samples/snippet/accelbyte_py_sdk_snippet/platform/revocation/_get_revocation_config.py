import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_revocation_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import RevocationConfigInfo

result, error = get_revocation_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
