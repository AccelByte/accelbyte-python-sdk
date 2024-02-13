import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import import_store_by_csv
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import ImportStoreResult

result, error = import_store_by_csv(
    store_id=store_id,
    category=category,
    display=display,
    item=item,
    notes=notes,
    section=section,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
