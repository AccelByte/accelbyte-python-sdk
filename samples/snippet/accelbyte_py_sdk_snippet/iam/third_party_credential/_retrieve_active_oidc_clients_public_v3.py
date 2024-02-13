import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import retrieve_active_oidc_clients_public_v3
from accelbyte_py_sdk.api.iam.models import ModelPublicThirdPartyPlatformInfo
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = retrieve_active_oidc_clients_public_v3(
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
