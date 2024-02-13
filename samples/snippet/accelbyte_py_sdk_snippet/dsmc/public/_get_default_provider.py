import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import get_default_provider
from accelbyte_py_sdk.api.dsmc.models import ModelsDefaultProvider

result, error = get_default_provider(
    x_additional_headers=x_additional_headers,
)
