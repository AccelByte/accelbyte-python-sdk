import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import rollback_content_version
from accelbyte_py_sdk.api.ugc.models import ModelsContentDownloadResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = rollback_content_version(
    content_id=content_id,
    version_id=version_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
