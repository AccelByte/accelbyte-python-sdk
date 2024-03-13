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

Example: '{"countries": [{"code": "qmTdPSR9Pb7cWoV2", "name": "INC5WO4FHMkSzub3"}, {"code": "WmQHVggsHNxkfOOM", "name": "AVp5ubMUZ58Dd5iM"}, {"code": "NVLjjWP1FexGTcXn", "name": "oLMPH97Z94A0jBl7"}], "countryGroupCode": "KXSWvpyiOASFcecA", "countryGroupName": "xT2Ls4BV4Ir82Yvw"}'
"""

result, error = add_country_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
