import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_clientsby_namespaceby_idv3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_clientsby_namespaceby_idv3(
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
