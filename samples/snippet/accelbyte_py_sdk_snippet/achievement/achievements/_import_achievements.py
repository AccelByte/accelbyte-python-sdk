import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import import_achievements
from accelbyte_py_sdk.api.achievement.models import ResponseError
from accelbyte_py_sdk.api.achievement.models import ServiceImportConfigResponse

result, error = import_achievements(
    file=file,
    strategy=strategy,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
