import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import handle_upload_xbox_pfx_certificate
from accelbyte_py_sdk.api.session.models import ModelsPlatformCredentials
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = handle_upload_xbox_pfx_certificate(
    certname=certname,
    file=file,
    password=password,
    description=description,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
