import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import public_generated_user_upload_content_url
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import FileUploadUrlInfo
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = public_generated_user_upload_content_url(
    user_id=user_id,
    file_type=file_type,
    category=category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
