import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_payment_provider_config
from accelbyte_py_sdk.api.platform.models import PaymentProviderConfigPagingSlicedResult

result, error = query_payment_provider_config(
    limit=limit,
    offset=offset,
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
