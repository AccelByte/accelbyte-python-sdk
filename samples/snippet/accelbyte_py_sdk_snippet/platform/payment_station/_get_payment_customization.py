import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_payment_customization
from accelbyte_py_sdk.api.platform.models import Customization

result, error = get_payment_customization(
    payment_provider=payment_provider,
    region=region,
    sandbox=sandbox,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
