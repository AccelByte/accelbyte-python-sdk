import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_agreements_public
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import RetrieveAcceptedAgreementResponse

result, error = retrieve_agreements_public(
    x_additional_headers=x_additional_headers,
)
