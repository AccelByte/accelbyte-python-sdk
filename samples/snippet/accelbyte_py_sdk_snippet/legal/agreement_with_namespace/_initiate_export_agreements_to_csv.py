import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import initiate_export_agreements_to_csv
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import InitiateExportAgreementsToCSVResponse

result, error = initiate_export_agreements_to_csv(
    policy_version_id=policy_version_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
