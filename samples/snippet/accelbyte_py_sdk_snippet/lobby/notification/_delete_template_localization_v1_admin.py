import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import delete_template_localization_v1_admin
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = delete_template_localization_v1_admin(
    template_language=template_language,
    template_slug=template_slug,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
