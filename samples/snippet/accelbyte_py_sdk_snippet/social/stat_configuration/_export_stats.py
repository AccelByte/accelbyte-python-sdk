import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import export_stats
from accelbyte_py_sdk.api.social.models import ErrorEntity

result, error = export_stats(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
