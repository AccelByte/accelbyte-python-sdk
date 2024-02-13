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

Example: '{"countries": [{"code": "l5TkVVov7IZmMzMP", "name": "1OoWJfIKxaGzv1nk"}, {"code": "I8xRcbL9MoouzTTO", "name": "MEQvRW8c3rbeHz52"}, {"code": "mezintT4fOJT7kJF", "name": "2AP0nGvEY2qX7dRP"}], "countryGroupCode": "4BhARtuvKGqjW8UJ", "countryGroupName": "lphn9lZzYZmDseaR"}'
"""

result, error = add_country_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
