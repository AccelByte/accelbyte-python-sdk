import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_eligibilities_public_indirect
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrieveUserEligibilitiesIndirectResponse

result, error = retrieve_eligibilities_public_indirect(
    client_id=client_id,
    country_code=country_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
