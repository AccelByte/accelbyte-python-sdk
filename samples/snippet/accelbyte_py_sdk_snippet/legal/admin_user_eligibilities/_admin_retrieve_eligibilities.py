import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import admin_retrieve_eligibilities
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrieveUserEligibilitiesIndirectResponse

result, error = admin_retrieve_eligibilities(
    user_id=user_id,
    client_id=client_id,
    country_code=country_code,
    publisher_user_id=publisher_user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
