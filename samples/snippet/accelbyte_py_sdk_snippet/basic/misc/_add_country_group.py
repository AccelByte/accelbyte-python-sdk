import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import add_country_group
from accelbyte_py_sdk.api.basic.models import AddCountryGroupRequest
from accelbyte_py_sdk.api.basic.models import AddCountryGroupResponse
from accelbyte_py_sdk.api.basic.models import ErrorEntity

"""
body:
Definition: AddCountryGroupRequest
countries: List[CountryObject]
Definition: List[CountryObject]
    code: str
    name: str
country_group_code: str
country_group_name: str

Example: '{"countries": [{"code": "9omp9ZkgUdrH6d7X", "name": "jX4kpkSO8exYmyqX"}, {"code": "f0iadDCAQHB9mBNT", "name": "pvQAuQ9BJkRXXK4T"}, {"code": "REy15XMM1CnLVPfB", "name": "xzb981agtYLhb8vL"}], "countryGroupCode": "msKXZjXZLnR8LZAT", "countryGroupName": "gNzI4orFb0whkztq"}'
"""

result, error = add_country_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
