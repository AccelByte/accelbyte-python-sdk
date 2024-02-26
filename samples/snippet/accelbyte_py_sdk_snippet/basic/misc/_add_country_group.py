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

Example: '{"countries": [{"code": "o8GxwkJW4arVN5BL", "name": "bGO5ahmCnzpVqAog"}, {"code": "EhpVJFXGuzLS0r7o", "name": "ZNu5Xr2Ejc8RHblV"}, {"code": "CiRqVFpCIorqirWg", "name": "wzIaa4wyZQzuwcbj"}], "countryGroupCode": "fnXA0nfGZ4OTlsyf", "countryGroupName": "RgRYX4FP0mTpRGCK"}'
"""

result, error = add_country_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
