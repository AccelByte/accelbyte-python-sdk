import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_update_attribute
from accelbyte_py_sdk.api.social.models import Attribute
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import GameProfileInfo
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: Attribute
name: str
value: str

Example: '{"name": "l3jCXmlKG2CYUwRP", "value": "ys24QFCBiVHStoYG"}'
"""

result, error = public_update_attribute(
    attribute_name=attribute_name,
    profile_id=profile_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
