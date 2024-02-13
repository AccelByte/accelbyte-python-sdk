import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_section
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = delete_section(
    section_id=section_id,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
