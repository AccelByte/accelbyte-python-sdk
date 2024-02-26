import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_list_client_templates
from accelbyte_py_sdk.api.iam.models import ClientmodelListTemplatesResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_list_client_templates(
    x_additional_headers=x_additional_headers,
)
