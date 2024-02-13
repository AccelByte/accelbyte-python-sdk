import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import upload_revocation_plugin_config_cert
from accelbyte_py_sdk.api.platform.models import RevocationPluginConfigInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = upload_revocation_plugin_config_cert(
    file=file,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
