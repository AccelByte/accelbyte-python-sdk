import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import fleet_update
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

Example: '{"active": true, "claimKeys": ["lMpZWPAFOWq5NEj4", "SmEvRQvLqOPaFUwd", "yx1FVvr6NLQXlSJV"], "dsHostConfiguration": {"instanceId": "Ihti0KgpPhSvl7Pq", "instanceType": "TTdVdDz5K42c56jO", "serversPerVm": 59}, "imageDeploymentProfile": {"commandLine": "7x4uYmdAH5l16sGG", "imageId": "bektgulqkpvbAAHC", "portConfigurations": [{"name": "nxAufKtKURNBolrT", "protocol": "SxpAH9qrqU1nqCei"}, {"name": "VN5qNtwHy85N7W3u", "protocol": "acAxZBolQASUp7ul"}, {"name": "qdqhclUXi0euh3Hf", "protocol": "9abayN7vJOaYdSFI"}], "timeout": {"creation": 7, "drain": 49, "session": 50, "unresponsive": 3}}, "name": "Di3XMKnfhw4KQWgG", "regions": [{"bufferSize": 1, "maxServerCount": 91, "minServerCount": 25, "region": "vdPk8hjkaLlxco7d"}, {"bufferSize": 57, "maxServerCount": 75, "minServerCount": 14, "region": "5xSK5niWeokhpfq9"}, {"bufferSize": 62, "maxServerCount": 98, "minServerCount": 63, "region": "60coqem3C5WkCdDy"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 79}, "success": {"collect": false, "percentage": 71}}, "logs": {"crashed": {"collect": true, "percentage": 93}, "success": {"collect": false, "percentage": 9}}}}'
"""

result, error = fleet_update(
    body=body,
    fleet_id=fleet_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
