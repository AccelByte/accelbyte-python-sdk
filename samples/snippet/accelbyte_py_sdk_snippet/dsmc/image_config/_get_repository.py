import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import get_repository
from accelbyte_py_sdk.api.dsmc.models import ModelsRepositoryRecord
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = get_repository(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
