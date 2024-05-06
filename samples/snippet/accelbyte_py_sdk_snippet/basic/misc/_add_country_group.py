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

Example: '{"countries": [{"code": "A48F2wPevZZxz1EN", "name": "VpbwqZcVP6TqndkO"}, {"code": "SwzXXABgG347UAyS", "name": "9Kas87PgqRFYEphy"}, {"code": "5lFckWFHTYijMJk5", "name": "xmvN54aXRQqljOI7"}], "countryGroupCode": "N9B5u9Tl2aMJsI9O", "countryGroupName": "Vzoa8IzkxrbrGBYH"}'
"""

result, error = add_country_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
