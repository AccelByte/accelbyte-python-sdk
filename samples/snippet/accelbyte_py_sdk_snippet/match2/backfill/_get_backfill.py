import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import get_backfill
from accelbyte_py_sdk.api.match2.models import ApiBackfillGetResponse
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = get_backfill(
    backfill_id=backfill_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
