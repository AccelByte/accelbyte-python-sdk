import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import list_ext_order_no_by_ext_tx_id

result, error = list_ext_order_no_by_ext_tx_id(
    ext_tx_id=ext_tx_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
