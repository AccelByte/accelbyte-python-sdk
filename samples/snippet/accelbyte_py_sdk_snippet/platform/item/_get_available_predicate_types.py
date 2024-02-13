import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_available_predicate_types
from accelbyte_py_sdk.api.platform.models import AvailablePredicate
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = get_available_predicate_types(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
