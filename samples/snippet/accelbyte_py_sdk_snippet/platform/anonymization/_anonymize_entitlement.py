import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import anonymize_entitlement

result, error = anonymize_entitlement(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
