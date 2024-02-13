import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_entitlement_ownership_token
from accelbyte_py_sdk.api.platform.models import OwnershipToken

result, error = public_get_entitlement_ownership_token(
    app_ids=app_ids,
    item_ids=item_ids,
    skus=skus,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
