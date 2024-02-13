import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import download_csv_templates

result, error = download_csv_templates(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
