import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_artifact_sampling_rules_get
from accelbyte_py_sdk.api.ams.models import ApiFleetArtifactsSampleRules
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

result, error = fleet_artifact_sampling_rules_get(
    fleet_id=fleet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
