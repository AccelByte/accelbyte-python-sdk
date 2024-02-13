import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import (
    retrieve_latest_policies_by_namespace_and_country_public,
)
from accelbyte_py_sdk.api.legal.models import RetrievePolicyPublicResponse

result, error = retrieve_latest_policies_by_namespace_and_country_public(
    country_code=country_code,
    always_include_default=always_include_default,
    default_on_empty=default_on_empty,
    policy_type=policy_type,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
