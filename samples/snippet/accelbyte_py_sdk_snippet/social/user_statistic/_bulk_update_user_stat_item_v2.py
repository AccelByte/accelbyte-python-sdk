import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_update_user_stat_item_v2
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import BulkUserStatItemUpdate
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[BulkUserStatItemUpdate]
additional_data: Dict[str, Any]
additional_key: str
stat_code: str
update_strategy: str
user_id: str
value: float

Example: '[{"additionalData": {"V6zLxVvX1ltzTyxc": {}, "uWUDzNLm97feNvyU": {}, "3PaOlN0ToWPSa0Yz": {}}, "additionalKey": "SrXTRyoNtL3n2T4Y", "statCode": "4d0Vlji4pXYlXopQ", "updateStrategy": "MAX", "userId": "0cRdKqoYkitjdRGm", "value": 0.8692875035369113}, {"additionalData": {"zwt1USw74gjpQUEB": {}, "LIHY2CkdHLdwdwfs": {}, "WFMm0eFU94dlw5Q3": {}}, "additionalKey": "TlWwdWNfQguAtlVD", "statCode": "3il1AZftZze7Dygm", "updateStrategy": "OVERRIDE", "userId": "xQsRueJoTKV70ZFy", "value": 0.23549489588141392}, {"additionalData": {"eMF9ZWJMpbB01H9b": {}, "kXNFz9A1ECDmphIo": {}, "nqcCXIA8TcQjmtkf": {}}, "additionalKey": "QYmC1eDP94Ea9NB3", "statCode": "UWK0vFDwjTvfpXYm", "updateStrategy": "INCREMENT", "userId": "Tn8oeJdTMbJY8b6i", "value": 0.893883534829651}]'
"""

result, error = bulk_update_user_stat_item_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
