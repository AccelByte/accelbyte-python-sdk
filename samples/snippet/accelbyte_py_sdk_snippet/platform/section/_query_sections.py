import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_sections
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SectionPagingSlicedResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = query_sections(
    end=end,
    limit=limit,
    offset=offset,
    start=start,
    store_id=store_id,
    view_id=view_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
