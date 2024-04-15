import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_acquiring_ds
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayAcquiringDsQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_acquiring_ds(
    end_date=end_date,
    start_date=start_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
