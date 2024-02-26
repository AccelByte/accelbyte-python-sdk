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

Example: '{"active": true, "claimKeys": ["4cbbe2CEfhYW8oSL", "x0UbNhV0BTNV65wM", "1W9VkF8VsfQIRI7X"], "dsHostConfiguration": {"instanceId": "iHg0XP4cEAD4X9aG", "instanceType": "V1ZaQRAVI47TBdMr", "serversPerVm": 75}, "imageDeploymentProfile": {"commandLine": "f4xxC4kyAfwdND0k", "imageId": "1oTI6wGPlynZJdJd", "portConfigurations": [{"name": "Xh8oCMFwofIB3iAy", "protocol": "NacC3jo91CRzXHOH"}, {"name": "jLNcwW8L1gYsoei3", "protocol": "3hgjkk5jLuOvu8x3"}, {"name": "O3VmWJy56YKXF43R", "protocol": "vC6OB582xc86iYG6"}], "timeout": {"creation": 52, "drain": 89, "session": 74, "unresponsive": 15}}, "name": "lXJR0pqdOE4hKSay", "regions": [{"bufferSize": 36, "maxServerCount": 2, "minServerCount": 34, "region": "28pPenUdw4eN8rPu"}, {"bufferSize": 15, "maxServerCount": 83, "minServerCount": 25, "region": "sqRyyp5p5MNIfQqg"}, {"bufferSize": 14, "maxServerCount": 79, "minServerCount": 62, "region": "CLE1JzIPxVsMgpNY"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 38}, "success": {"collect": false, "percentage": 20}}, "logs": {"crashed": {"collect": true, "percentage": 86}, "success": {"collect": true, "percentage": 69}}}}'
"""

result, error = fleet_create(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
