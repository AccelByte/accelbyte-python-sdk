import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_list_active_sections
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SectionInfo

result, error = public_list_active_sections(
    user_id=user_id,
    auto_calc_estimated_price=auto_calc_estimated_price,
    language=language,
    region=region,
    store_id=store_id,
    view_id=view_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
