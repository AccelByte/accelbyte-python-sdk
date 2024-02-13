import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import import_stats
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatImportInfo

result, error = import_stats(
    file=file,
    replace_existing=replace_existing,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
