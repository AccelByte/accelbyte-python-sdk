import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_bulk_user_by_email_address_v3
from accelbyte_py_sdk.api.iam.models import ModelListEmailAddressRequest
from accelbyte_py_sdk.api.iam.models import ModelListUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelListEmailAddressRequest
list_email_address_request: List[str]

Example: '{"listEmailAddressRequest": ["wtqthSqzBvhui7jv", "jDrp5ONf4gVwJew8", "HPkcG907Cib1BwdR"]}'
"""

result, error = admin_get_bulk_user_by_email_address_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
