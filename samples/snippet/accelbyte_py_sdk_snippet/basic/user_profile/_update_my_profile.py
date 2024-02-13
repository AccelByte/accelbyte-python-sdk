import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_my_profile
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UserProfilePrivateInfo
from accelbyte_py_sdk.api.basic.models import UserProfileUpdate
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UserProfileUpdate
avatar_large_url: str
avatar_small_url: str
avatar_url: str
custom_attributes: Dict[str, Any]
date_of_birth: str
first_name: str
language: str
last_name: str
private_custom_attributes: Dict[str, Any]
time_zone: str
zip_code: str

Example: '{"avatarLargeUrl": "fEZ47i3tHlfRrQFR", "avatarSmallUrl": "1oLhtM8lB5wG7UuB", "avatarUrl": "OW6TWXA667TrMYB0", "customAttributes": {"A4F8aWytwVmJ6q4b": {}, "Sh7mUVDv2W06ZiAn": {}, "87YlX9n2wc1OTPec": {}}, "dateOfBirth": "1993-01-01", "firstName": "CEp9QXgx3n0DgNN5", "language": "iElA_OGyj_VC", "lastName": "FIySBAePRGbjBjaN", "privateCustomAttributes": {"XQqsHQhQZ193Bq3D": {}, "p93Tkn7NRYeTwe6h": {}, "1sPGVCthu3zM0QBQ": {}}, "timeZone": "Vyh0lPK61w6kkR9h", "zipCode": "1WRRRhnM3ZqKYgpn"}'
"""

result, error = update_my_profile(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
