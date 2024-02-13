import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import import_images
from accelbyte_py_sdk.api.dsmc.models import ModelsImportResponse
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = import_images(
    file=file,
    x_additional_headers=x_additional_headers,
)
