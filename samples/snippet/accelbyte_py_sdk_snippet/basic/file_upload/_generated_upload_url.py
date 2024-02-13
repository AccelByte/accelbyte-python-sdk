import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import generated_upload_url
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import FileUploadUrlInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = generated_upload_url(
    folder=folder,
    file_type=file_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
