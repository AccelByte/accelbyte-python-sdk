import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import retrieve_accepted_agreements_1
from accelbyte_py_sdk.api.legal.models import RetrieveAcceptedAgreementResponse

result, error = retrieve_accepted_agreements_1(
    user_id=user_id,
    exclude_other_namespaces_policies=exclude_other_namespaces_policies,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
