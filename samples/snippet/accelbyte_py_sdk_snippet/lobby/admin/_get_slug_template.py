import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_slug_template
from accelbyte_py_sdk.api.lobby.models import ModelTemplateLocalizationResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = get_slug_template(
    template_slug=template_slug,
    after=after,
    before=before,
    limit=limit,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
