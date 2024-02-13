import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_xbl_bp_cert_file
from accelbyte_py_sdk.api.platform.models import XblIAPConfigInfo

result, error = update_xbl_bp_cert_file(
    file=file,
    password=password,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
