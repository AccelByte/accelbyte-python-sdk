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

Example: '{"countries": [{"code": "EQClOz3lqYkYCog0", "name": "3UFwoErgByJ4LGR2"}, {"code": "r0LQrQp2ha7N9YM5", "name": "0USysElHU3MZSLTw"}, {"code": "di1a8J81wJSQoHct", "name": "F7EXMhM8GBstTTSM"}], "countryGroupCode": "VJMrZAES6BwkVGov", "countryGroupName": "Gi95SEJ2zsg3FrYN"}'
"""

result, error = add_country_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
