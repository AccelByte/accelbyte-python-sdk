import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_artifact_sampling_rules_set
from accelbyte_py_sdk.api.ams.models import ApiFleetArtifactsSampleRules
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiFleetArtifactsSampleRules
coredumps: ApiArtifactTypeSamplingRules
Definition: ApiArtifactTypeSamplingRules
    crashed: ApiArtifactSamplingRule
    Definition: ApiArtifactSamplingRule
        collect: bool
        percentage: int
    success: ApiArtifactSamplingRule
    Definition: ApiArtifactSamplingRule
        collect: bool
        percentage: int
logs: ApiArtifactTypeSamplingRules
Definition: ApiArtifactTypeSamplingRules
    crashed: ApiArtifactSamplingRule
    Definition: ApiArtifactSamplingRule
        collect: bool
        percentage: int
    success: ApiArtifactSamplingRule
    Definition: ApiArtifactSamplingRule
        collect: bool
        percentage: int

Example: '{"coredumps": {"crashed": {"collect": false, "percentage": 62}, "success": {"collect": false, "percentage": 8}}, "logs": {"crashed": {"collect": false, "percentage": 76}, "success": {"collect": true, "percentage": 47}}}'
"""

result, error = fleet_artifact_sampling_rules_set(
    body=body,
    fleet_id=fleet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
