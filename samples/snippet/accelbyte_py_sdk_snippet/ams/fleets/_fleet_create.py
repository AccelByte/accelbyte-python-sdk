import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_create
from accelbyte_py_sdk.api.ams.models import ApiFleetCreateResponse
from accelbyte_py_sdk.api.ams.models import ApiFleetParameters
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiFleetParameters
active: bool
claim_keys: List[str]
ds_host_configuration: ApiDSHostConfiguration
Definition: ApiDSHostConfiguration
    instance_id: str
    instance_type: str
    servers_per_vm: int
image_deployment_profile: ApiImageDeploymentProfile
Definition: ApiImageDeploymentProfile
    command_line: str
    image_id: str
    port_configurations: List[ApiPortConfiguration]
    Definition: List[ApiPortConfiguration]
        name: str
        protocol: str
    timeout: ApiTimeout
    Definition: ApiTimeout
        creation: int
        drain: int
        session: int
        unresponsive: int
name: str
regions: List[ApiRegionConfig]
Definition: List[ApiRegionConfig]
    buffer_size: int
    max_server_count: int
    min_server_count: int
    region: str
sampling_rules: ApiFleetArtifactsSampleRules
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

Example: '{"active": true, "claimKeys": ["aokbamHn72VgGwWw", "ZB4Pn3Eu3VGzabN1", "k3DIfLHLHWjWdJfi"], "dsHostConfiguration": {"instanceId": "MUqTq3Kz7YXan4Fh", "instanceType": "vqsWbBpBLwvjj69e", "serversPerVm": 40}, "imageDeploymentProfile": {"commandLine": "8SKYBEkzRYCirQEp", "imageId": "wyyGhic45Ekeo4Iz", "portConfigurations": [{"name": "43NbUYd8Ncnwl2Lr", "protocol": "G2Vyj3CkHlh6jKTq"}, {"name": "WB7IZ4BmtF3mdgVH", "protocol": "O2b6Xs0ivCBvhkQH"}, {"name": "3TxNmD0vsSqGz8db", "protocol": "etAnpYcZzcdkbaVs"}], "timeout": {"creation": 98, "drain": 89, "session": 19, "unresponsive": 18}}, "name": "Z0Zez6RVnakAzzXZ", "regions": [{"bufferSize": 86, "maxServerCount": 19, "minServerCount": 76, "region": "HwvtEdItt8NTXdD8"}, {"bufferSize": 96, "maxServerCount": 43, "minServerCount": 12, "region": "IQnPN5TQho98xAuy"}, {"bufferSize": 46, "maxServerCount": 15, "minServerCount": 78, "region": "eDFFv06QC1gnICIK"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 19}, "success": {"collect": true, "percentage": 85}}, "logs": {"crashed": {"collect": false, "percentage": 71}, "success": {"collect": false, "percentage": 44}}}}'
"""

result, error = fleet_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
