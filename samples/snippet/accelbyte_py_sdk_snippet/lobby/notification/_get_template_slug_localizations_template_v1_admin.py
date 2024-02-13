import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_template_slug_localizations_template_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelGetAllNotificationTemplateSlugResp
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = get_template_slug_localizations_template_v1_admin(
    template_slug=template_slug,
    after=after,
    before=before,
    limit=limit,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
