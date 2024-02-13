import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import anonymize_payment

result, error = anonymize_payment(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
