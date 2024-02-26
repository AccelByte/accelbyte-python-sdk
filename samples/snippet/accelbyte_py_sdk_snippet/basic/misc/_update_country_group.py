import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_country_group
from accelbyte_py_sdk.api.basic.models import CountryGroupObject
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import UpdateCountryGroupRequest
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: UpdateCountryGroupRequest
countries: List[CountryObject]
Definition: List[CountryObject]
    code: str
    name: str
country_group_name: str

Example: '{"countries": [{"code": "E57gamBPs8eZeO4x", "name": "yYrENGot7z6FZUlv"}, {"code": "MToAh7iulaiRTWR0", "name": "v1FbhxWkpknOz3gO"}, {"code": "Mg0O9x8hhAmgLvm9", "name": "fuXJomiRmKLvtwrZ"}], "countryGroupName": "RlyxS6KYTMgpwQvz"}'
"""

result, error = update_country_group(
    country_group_code=country_group_code,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
