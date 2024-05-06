import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import download_exported_agreements_in_csv
from accelbyte_py_sdk.api.legal.models import DownloadExportedAgreementsInCSVResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity

result, error = download_exported_agreements_in_csv(
    export_id=export_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
