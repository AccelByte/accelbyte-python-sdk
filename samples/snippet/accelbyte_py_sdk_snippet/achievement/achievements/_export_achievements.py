import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import export_achievements
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = export_achievements(
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
