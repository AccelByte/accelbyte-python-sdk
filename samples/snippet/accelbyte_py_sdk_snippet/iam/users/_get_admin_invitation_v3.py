import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import get_admin_invitation_v3
from accelbyte_py_sdk.api.iam.models import ModelUserInvitationV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

result, error = get_admin_invitation_v3(
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
