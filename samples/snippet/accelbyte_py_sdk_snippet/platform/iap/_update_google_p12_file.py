import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_google_p12_file
from accelbyte_py_sdk.api.platform.models import GoogleIAPConfigInfo

result, error = update_google_p12_file(
    file=file,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
