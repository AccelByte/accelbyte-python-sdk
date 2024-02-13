import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_staging_content
from accelbyte_py_sdk.api.ugc.models import ModelsStagingContentResponse
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateStagingContentRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateStagingContentRequest
file_extension: str
file_location: str

Example: '{"fileExtension": "YgDAXep1R1QRtqeq", "fileLocation": "e13Ox69yHvrbQyYx"}'
"""

result, error = update_staging_content(
    body=body,
    content_id=content_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
