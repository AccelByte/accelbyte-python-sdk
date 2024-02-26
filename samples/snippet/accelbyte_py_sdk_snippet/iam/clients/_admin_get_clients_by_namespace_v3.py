import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_clients_by_namespace_v3
from accelbyte_py_sdk.api.iam.models import ClientmodelClientsV3Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_clients_by_namespace_v3(
    client_id=client_id,
    client_name=client_name,
    client_type=client_type,
    limit=limit,
    offset=offset,
    skip_login_queue=skip_login_queue,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
