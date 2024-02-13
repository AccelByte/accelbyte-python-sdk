import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import publish_template
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = publish_template(
    template_language=template_language,
    template_slug=template_slug,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
