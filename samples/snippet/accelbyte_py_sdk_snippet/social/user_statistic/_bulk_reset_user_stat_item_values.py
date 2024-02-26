import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import bulk_reset_user_stat_item_values
from accelbyte_py_sdk.api.social.models import ADTOObjectForResettingUserStatItems
from accelbyte_py_sdk.api.social.models import BulkStatOperationResult
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: List[ADTOObjectForResettingUserStatItems]
additional_data: Dict[str, Any]
stat_code: str

Example: '[{"additionalData": {"WYAhpdiE7zvOVCNp": {}, "TYhTcq3Jiw13aT08": {}, "8b36qmClR2qJT4mv": {}}, "statCode": "kGQalKxfmEqMF3ba"}, {"additionalData": {"U7Nq6G7xY2Guariz": {}, "QAST69rXGHxZlxgy": {}, "Fx0CTf3Gq7Pan2L5": {}}, "statCode": "rLfDQR0lebzDWEZk"}, {"additionalData": {"yQow5RI7fgsqbTAn": {}, "OTmFmhTPY9jtpS9a": {}, "B1HunEVwyxKSpixC": {}}, "statCode": "fea4ldExG5AabtUa"}]'
"""

result, error = bulk_reset_user_stat_item_values(
    user_id=user_id,
    body=body,
    additional_key=additional_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
