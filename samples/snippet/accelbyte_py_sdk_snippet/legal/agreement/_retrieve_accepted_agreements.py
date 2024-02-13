import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_accepted_agreements
from accelbyte_py_sdk.api.legal.models import RetrieveAcceptedAgreementResponse

result, error = retrieve_accepted_agreements(
    user_id=user_id,
    x_additional_headers=x_additional_headers,
)
