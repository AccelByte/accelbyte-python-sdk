import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_stat_cycles_1
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatCyclePagingSlicedResult

result, error = get_stat_cycles_1(
    cycle_type=cycle_type,
    limit=limit,
    name=name,
    offset=offset,
    sort_by=sort_by,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
