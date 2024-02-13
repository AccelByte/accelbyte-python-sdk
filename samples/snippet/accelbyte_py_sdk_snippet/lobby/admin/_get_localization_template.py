import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_localization_template
from accelbyte_py_sdk.api.lobby.models import ModelTemplateLocalization
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = get_localization_template(
    template_language=template_language,
    template_slug=template_slug,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
