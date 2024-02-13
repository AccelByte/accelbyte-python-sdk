import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import import_stat_cycle
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatImportInfo

result, error = import_stat_cycle(
    file=file,
    replace_existing=replace_existing,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
