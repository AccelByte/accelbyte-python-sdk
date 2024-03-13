import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_get_namespace_invitation_history_v4
from accelbyte_py_sdk.api.iam.models import ModelInvitationHistoryResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_get_namespace_invitation_history_v4(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
