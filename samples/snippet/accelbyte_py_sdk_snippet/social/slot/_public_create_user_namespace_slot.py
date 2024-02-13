import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_create_user_namespace_slot
from accelbyte_py_sdk.api.social.models import ErrorEntity

result, error = public_create_user_namespace_slot(
    user_id=user_id,
    checksum=checksum,
    custom_attribute=custom_attribute,
    file=file,
    label=label,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
