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

Example: '[{"additionalData": {"EigtBuksSbSwhm4M": {}, "AobVRuGg1M46wJfp": {}, "Irs6wjWTiR5zTZRx": {}}, "additionalKey": "KA3ABFsuK7MWo19X", "statCode": "ZxdYjRupThFg5UqQ", "updateStrategy": "INCREMENT", "userId": "xQQ1fQ7YghoWJUrD", "value": 0.17565375538357242}, {"additionalData": {"E3bz129C6jdi6k2t": {}, "VlIDZBmFSNtvQjNZ": {}, "g8atqOMYIt4ieJWL": {}}, "additionalKey": "cnRaFmE2ob068Pds", "statCode": "dl8ETMIPIRaKpPE4", "updateStrategy": "OVERRIDE", "userId": "q09fFetbhHkoOYKI", "value": 0.09378789710096758}, {"additionalData": {"yptYnKbUljPQPF1u": {}, "b9bjuVh773IkwQYJ": {}, "gZTI28NI60m9uVAm": {}}, "additionalKey": "GWGBIT1CU7bGmiYq", "statCode": "fruljg6pnDhsTUdD", "updateStrategy": "MIN", "userId": "QPB7aQuoTgfuEkXq", "value": 0.14953818031614952}]'
"""

result, error = bulk_update_user_stat_item_v2(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
