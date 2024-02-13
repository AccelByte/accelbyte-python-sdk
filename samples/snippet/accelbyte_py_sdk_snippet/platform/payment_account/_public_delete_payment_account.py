import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_delete_payment_account

result, error = public_delete_payment_account(
    id_=id_,
    type_=type_,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
