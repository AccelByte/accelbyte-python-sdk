import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import check_readiness
from accelbyte_py_sdk.api.legal.models import LegalReadinessStatusResponse

result, error = check_readiness(
    x_additional_headers=x_additional_headers,
)
