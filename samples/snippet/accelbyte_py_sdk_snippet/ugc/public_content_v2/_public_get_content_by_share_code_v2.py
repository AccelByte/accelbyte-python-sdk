import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_get_content_by_share_code_v2
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponseV2
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = public_get_content_by_share_code_v2(
    share_code=share_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
