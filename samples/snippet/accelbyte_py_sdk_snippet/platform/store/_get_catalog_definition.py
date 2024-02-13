import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_catalog_definition
from accelbyte_py_sdk.api.platform.models import CatalogDefinitionInfo

result, error = get_catalog_definition(
    catalog_type=catalog_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
