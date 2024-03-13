import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_list_invitation_histories_v4
from accelbyte_py_sdk.api.iam.models import ModelListInvitationHistoriesV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = admin_list_invitation_histories_v4(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
