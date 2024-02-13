import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_eligibilities_public
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrieveUserEligibilitiesResponse

result, error = retrieve_eligibilities_public(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
