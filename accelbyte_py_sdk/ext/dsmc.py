# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (6.2.0)

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from .utils import randomize

from ..api.dsmc.models import LogAppMessageDeclaration
from ..api.dsmc.models import ModelsAllocationEvent
from ..api.dsmc.models import ModelsClaimSessionRequest
from ..api.dsmc.models import ModelsCountServerResponse
from ..api.dsmc.models import ModelsCountSessionResponse
from ..api.dsmc.models import ModelsCreateDSMConfigRequest
from ..api.dsmc.models import ModelsCreateDeploymentOverrideRequest
from ..api.dsmc.models import ModelsCreateDeploymentRequest
from ..api.dsmc.models import ModelsCreateImagePatchRequest
from ..api.dsmc.models import ModelsCreateImageRequest
from ..api.dsmc.models import ModelsCreatePodConfigRequest
from ..api.dsmc.models import ModelsCreatePortRequest
from ..api.dsmc.models import ModelsCreateRegionOverrideRequest
from ..api.dsmc.models import ModelsCreateSessionRequest
from ..api.dsmc.models import ModelsDSMConfigRecord
from ..api.dsmc.models import ModelsDefaultProvider
from ..api.dsmc.models import ModelsDeploymentConfigOverride
from ..api.dsmc.models import ModelsDeploymentWithOverride
from ..api.dsmc.models import ModelsDeregisterLocalServerRequest
from ..api.dsmc.models import ModelsDetailedCountServerResponse
from ..api.dsmc.models import ModelsGetImageDetailResponse
from ..api.dsmc.models import ModelsGetImageLimitResponse
from ..api.dsmc.models import ModelsGetImageLimitResponseData
from ..api.dsmc.models import ModelsGetImagePatchDetailResponse
from ..api.dsmc.models import ModelsImageRecord
from ..api.dsmc.models import ModelsImageRecordUpdate
from ..api.dsmc.models import ModelsImportResponse
from ..api.dsmc.models import ModelsInstanceSpec
from ..api.dsmc.models import ModelsListConfigResponse
from ..api.dsmc.models import ModelsListDeploymentResponse
from ..api.dsmc.models import ModelsListImagePatchesResponse
from ..api.dsmc.models import ModelsListImageResponse
from ..api.dsmc.models import ModelsListPodConfigResponse
from ..api.dsmc.models import ModelsListServerResponse
from ..api.dsmc.models import ModelsListSessionResponse
from ..api.dsmc.models import ModelsMatchResultNotificationPayload
from ..api.dsmc.models import ModelsPagingCursor
from ..api.dsmc.models import ModelsPatchImageRecord
from ..api.dsmc.models import ModelsPodConfigRecord
from ..api.dsmc.models import ModelsPodCountConfigOverride
from ..api.dsmc.models import ModelsRegisterLocalServerRequest
from ..api.dsmc.models import ModelsRegisterServerRequest
from ..api.dsmc.models import ModelsRequestMatchMember
from ..api.dsmc.models import ModelsRequestMatchParty
from ..api.dsmc.models import ModelsRequestMatchingAlly
from ..api.dsmc.models import ModelsServer
from ..api.dsmc.models import ModelsServerSessionResponse
from ..api.dsmc.models import ModelsSession
from ..api.dsmc.models import ModelsSessionResponse
from ..api.dsmc.models import ModelsShutdownServerRequest
from ..api.dsmc.models import ModelsStatusHistory
from ..api.dsmc.models import ModelsUpdateDSMConfigRequest
from ..api.dsmc.models import ModelsUpdateDeploymentOverrideRequest
from ..api.dsmc.models import ModelsUpdateDeploymentRequest
from ..api.dsmc.models import ModelsUpdatePodConfigRequest
from ..api.dsmc.models import ModelsUpdatePortRequest
from ..api.dsmc.models import ModelsUpdateRegionOverrideRequest
from ..api.dsmc.models import ResponseError


def create_log_app_message_declaration_example() -> LogAppMessageDeclaration:
    instance = LogAppMessageDeclaration()
    instance.attributes = [randomize()]
    instance.code = randomize()
    instance.code_name = randomize()
    instance.section = randomize()
    instance.service = randomize()
    instance.text = randomize()
    return instance


def create_models_allocation_event_example() -> ModelsAllocationEvent:
    instance = ModelsAllocationEvent()
    instance.description = randomize()
    instance.time_stamp = randomize("date")
    instance.type_ = randomize()
    return instance


def create_models_claim_session_request_example() -> ModelsClaimSessionRequest:
    instance = ModelsClaimSessionRequest()
    instance.session_id = randomize("uid")
    return instance


def create_models_count_server_response_example() -> ModelsCountServerResponse:
    instance = ModelsCountServerResponse()
    instance.count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_count_session_response_example() -> ModelsCountSessionResponse:
    instance = ModelsCountSessionResponse()
    instance.count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_create_deployment_override_request_example() -> (
    ModelsCreateDeploymentOverrideRequest
):
    instance = ModelsCreateDeploymentOverrideRequest()
    instance.buffer_count = randomize("int", min_val=1, max_val=1000)
    instance.buffer_percent = randomize("int", min_val=1, max_val=1000)
    instance.configuration = randomize()
    instance.enable_region_overrides = randomize("bool")
    instance.game_version = randomize("version")
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.min_count = randomize("int", min_val=1, max_val=1000)
    instance.region_overrides = {}
    instance.regions = [randomize()]
    instance.unlimited = randomize("bool")
    instance.use_buffer_percent = randomize("bool")
    instance.session_timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_create_deployment_request_example() -> ModelsCreateDeploymentRequest:
    instance = ModelsCreateDeploymentRequest()
    instance.allow_version_override = randomize("bool")
    instance.buffer_count = randomize("int", min_val=1, max_val=1000)
    instance.buffer_percent = randomize("int", min_val=1, max_val=1000)
    instance.configuration = randomize()
    instance.enable_region_overrides = randomize("bool")
    instance.game_version = randomize("version")
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.min_count = randomize("int", min_val=1, max_val=1000)
    instance.overrides = {}
    instance.region_overrides = {}
    instance.regions = [randomize()]
    instance.unlimited = randomize("bool")
    instance.use_buffer_percent = randomize("bool")
    instance.session_timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_create_dsm_config_request_example() -> ModelsCreateDSMConfigRequest:
    instance = ModelsCreateDSMConfigRequest()
    instance.claim_timeout = randomize("int", min_val=1, max_val=1000)
    instance.creation_timeout = randomize("int", min_val=1, max_val=1000)
    instance.default_version = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.ports = {}
    instance.protocol = randomize()
    instance.providers = [randomize()]
    instance.session_timeout = randomize("int", min_val=1, max_val=1000)
    instance.unreachable_timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_create_image_patch_request_example() -> ModelsCreateImagePatchRequest:
    instance = ModelsCreateImagePatchRequest()
    instance.artifact_path = randomize()
    instance.docker_path = randomize()
    instance.image = randomize()
    instance.image_size = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.patch_version = randomize()
    instance.persistent = randomize("bool")
    instance.version = randomize("version")
    return instance


def create_models_create_image_request_example() -> ModelsCreateImageRequest:
    instance = ModelsCreateImageRequest()
    instance.artifact_path = randomize()
    instance.docker_path = randomize()
    instance.image = randomize()
    instance.image_size = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.persistent = randomize("bool")
    instance.version = randomize("version")
    return instance


def create_models_create_pod_config_request_example() -> ModelsCreatePodConfigRequest:
    instance = ModelsCreatePodConfigRequest()
    instance.cpu_limit = randomize("int", min_val=1, max_val=1000)
    instance.mem_limit = randomize("int", min_val=1, max_val=1000)
    instance.params = randomize()
    return instance


def create_models_create_port_request_example() -> ModelsCreatePortRequest:
    instance = ModelsCreatePortRequest()
    instance.port = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_create_region_override_request_example() -> (
    ModelsCreateRegionOverrideRequest
):
    instance = ModelsCreateRegionOverrideRequest()
    instance.buffer_count = randomize("int", min_val=1, max_val=1000)
    instance.buffer_percent = randomize("int", min_val=1, max_val=1000)
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.min_count = randomize("int", min_val=1, max_val=1000)
    instance.unlimited = randomize("bool")
    instance.use_buffer_percent = randomize("bool")
    return instance


def create_models_create_session_request_example() -> ModelsCreateSessionRequest:
    instance = ModelsCreateSessionRequest()
    instance.client_version = randomize()
    instance.configuration = randomize()
    instance.deployment = randomize()
    instance.game_mode = randomize()
    instance.matching_allies = [create_models_request_matching_ally_example()]
    instance.namespace = randomize("slug")
    instance.pod_name = randomize()
    instance.region = randomize()
    instance.session_id = randomize("uid")
    instance.notification_payload = (
        create_models_match_result_notification_payload_example()
    )
    return instance


def create_models_default_provider_example() -> ModelsDefaultProvider:
    instance = ModelsDefaultProvider()
    instance.provider_name = randomize()
    return instance


def create_models_deployment_config_override_example() -> (
    ModelsDeploymentConfigOverride
):
    instance = ModelsDeploymentConfigOverride()
    instance.buffer_count = randomize("int", min_val=1, max_val=1000)
    instance.buffer_percent = randomize("int", min_val=1, max_val=1000)
    instance.configuration = randomize()
    instance.enable_region_overrides = randomize("bool")
    instance.game_version = randomize("version")
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.min_count = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.region_overrides = {}
    instance.regions = [randomize()]
    instance.unlimited = randomize("bool")
    instance.use_buffer_percent = randomize("bool")
    instance.session_timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_deployment_with_override_example() -> ModelsDeploymentWithOverride:
    instance = ModelsDeploymentWithOverride()
    instance.allow_version_override = randomize("bool")
    instance.buffer_count = randomize("int", min_val=1, max_val=1000)
    instance.buffer_percent = randomize("int", min_val=1, max_val=1000)
    instance.configuration = randomize()
    instance.created_at = randomize("date")
    instance.enable_region_overrides = randomize("bool")
    instance.game_version = randomize("version")
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.min_count = randomize("int", min_val=1, max_val=1000)
    instance.modified_by = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.overrides = {}
    instance.region_overrides = {}
    instance.regions = [randomize()]
    instance.unlimited = randomize("bool")
    instance.updated_at = randomize("date")
    instance.use_buffer_percent = randomize("bool")
    instance.session_timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_deregister_local_server_request_example() -> (
    ModelsDeregisterLocalServerRequest
):
    instance = ModelsDeregisterLocalServerRequest()
    instance.name = randomize()
    return instance


def create_models_detailed_count_server_response_example() -> (
    ModelsDetailedCountServerResponse
):
    instance = ModelsDetailedCountServerResponse()
    instance.busy_count = randomize("int", min_val=1, max_val=1000)
    instance.creating_count = randomize("int", min_val=1, max_val=1000)
    instance.ready_count = randomize("int", min_val=1, max_val=1000)
    instance.unreachable_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_dsm_config_record_example() -> ModelsDSMConfigRecord:
    instance = ModelsDSMConfigRecord()
    instance.claim_timeout = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.creation_timeout = randomize("int", min_val=1, max_val=1000)
    instance.default_version = randomize()
    instance.modified_by = randomize()
    instance.namespace = randomize("slug")
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.ports = {}
    instance.protocol = randomize()
    instance.providers = [randomize()]
    instance.session_timeout = randomize("int", min_val=1, max_val=1000)
    instance.unreachable_timeout = randomize("int", min_val=1, max_val=1000)
    instance.updated_at = randomize("date")
    return instance


def create_models_get_image_detail_response_example() -> ModelsGetImageDetailResponse:
    instance = ModelsGetImageDetailResponse()
    instance.data = create_models_image_record_example()
    return instance


def create_models_get_image_limit_response_example() -> ModelsGetImageLimitResponse:
    instance = ModelsGetImageLimitResponse()
    instance.data = create_models_get_image_limit_response_data_example()
    return instance


def create_models_get_image_limit_response_data_example() -> (
    ModelsGetImageLimitResponseData
):
    instance = ModelsGetImageLimitResponseData()
    instance.image_count = randomize("int", min_val=1, max_val=1000)
    instance.image_limit = randomize("int", min_val=1, max_val=1000)
    instance.non_persistent_image_number = randomize("int", min_val=1, max_val=1000)
    instance.non_persistent_image_used_in_deployment_number = randomize(
        "int", min_val=1, max_val=1000
    )
    return instance


def create_models_get_image_patch_detail_response_example() -> (
    ModelsGetImagePatchDetailResponse
):
    instance = ModelsGetImagePatchDetailResponse()
    instance.data = create_models_patch_image_record_example()
    return instance


def create_models_image_record_example() -> ModelsImageRecord:
    instance = ModelsImageRecord()
    instance.artifact_path = randomize()
    instance.created_at = randomize("date")
    instance.docker_path = randomize()
    instance.image = randomize()
    instance.image_size = randomize("int", min_val=1, max_val=1000)
    instance.modified_by = randomize()
    instance.namespace = randomize("slug")
    instance.persistent = randomize("bool")
    instance.updated_at = randomize("date")
    instance.version = randomize("version")
    return instance


def create_models_image_record_update_example() -> ModelsImageRecordUpdate:
    instance = ModelsImageRecordUpdate()
    instance.artifact_path = randomize()
    instance.image = randomize()
    instance.namespace = randomize("slug")
    instance.persistent = randomize("bool")
    instance.version = randomize("version")
    return instance


def create_models_import_response_example() -> ModelsImportResponse:
    instance = ModelsImportResponse()
    instance.affected = [randomize()]
    instance.failed = [randomize()]
    return instance


def create_models_instance_spec_example() -> ModelsInstanceSpec:
    instance = ModelsInstanceSpec()
    instance.cpu = randomize("int", min_val=1, max_val=1000)
    instance.mem = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_list_config_response_example() -> ModelsListConfigResponse:
    instance = ModelsListConfigResponse()
    instance.configs = [create_models_dsm_config_record_example()]
    return instance


def create_models_list_deployment_response_example() -> ModelsListDeploymentResponse:
    instance = ModelsListDeploymentResponse()
    instance.deployments = [create_models_deployment_with_override_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_list_image_patches_response_example() -> (
    ModelsListImagePatchesResponse
):
    instance = ModelsListImagePatchesResponse()
    instance.images = [create_models_patch_image_record_example()]
    return instance


def create_models_list_image_response_example() -> ModelsListImageResponse:
    instance = ModelsListImageResponse()
    instance.images = [create_models_image_record_example()]
    instance.paging = create_models_paging_cursor_example()
    return instance


def create_models_list_pod_config_response_example() -> ModelsListPodConfigResponse:
    instance = ModelsListPodConfigResponse()
    instance.paging = create_models_paging_cursor_example()
    instance.pod_configs = [create_models_pod_config_record_example()]
    return instance


def create_models_list_server_response_example() -> ModelsListServerResponse:
    instance = ModelsListServerResponse()
    instance.paging = create_models_paging_cursor_example()
    instance.servers = [create_models_server_example()]
    return instance


def create_models_list_session_response_example() -> ModelsListSessionResponse:
    instance = ModelsListSessionResponse()
    instance.paging = create_models_paging_cursor_example()
    instance.sessions = [create_models_session_example()]
    return instance


def create_models_match_result_notification_payload_example() -> (
    ModelsMatchResultNotificationPayload
):
    instance = ModelsMatchResultNotificationPayload()
    return instance


def create_models_paging_cursor_example() -> ModelsPagingCursor:
    instance = ModelsPagingCursor()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_patch_image_record_example() -> ModelsPatchImageRecord:
    instance = ModelsPatchImageRecord()
    instance.artifact_path = randomize()
    instance.created_at = randomize("date")
    instance.docker_path = randomize()
    instance.image = randomize()
    instance.image_size = randomize("int", min_val=1, max_val=1000)
    instance.modified_by = randomize()
    instance.namespace = randomize("slug")
    instance.patch_version = randomize()
    instance.persistent = randomize("bool")
    instance.updated_at = randomize("date")
    instance.version = randomize("version")
    return instance


def create_models_pod_config_record_example() -> ModelsPodConfigRecord:
    instance = ModelsPodConfigRecord()
    instance.cpu_limit = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.mem_limit = randomize("int", min_val=1, max_val=1000)
    instance.modified_by = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.params = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_models_pod_count_config_override_example() -> ModelsPodCountConfigOverride:
    instance = ModelsPodCountConfigOverride()
    instance.buffer_count = randomize("int", min_val=1, max_val=1000)
    instance.buffer_percent = randomize("int", min_val=1, max_val=1000)
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.min_count = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.unlimited = randomize("bool")
    instance.use_buffer_percent = randomize("bool")
    return instance


def create_models_register_local_server_request_example() -> (
    ModelsRegisterLocalServerRequest
):
    instance = ModelsRegisterLocalServerRequest()
    instance.custom_attribute = randomize()
    instance.ip = randomize()
    instance.name = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_register_server_request_example() -> ModelsRegisterServerRequest:
    instance = ModelsRegisterServerRequest()
    instance.custom_attribute = randomize()
    instance.pod_name = randomize()
    return instance


def create_models_request_match_member_example() -> ModelsRequestMatchMember:
    instance = ModelsRequestMatchMember()
    instance.user_id = randomize("uid")
    return instance


def create_models_request_match_party_example() -> ModelsRequestMatchParty:
    instance = ModelsRequestMatchParty()
    instance.party_attributes = {randomize(): randomize()}
    instance.party_id = randomize("uid")
    instance.party_members = [create_models_request_match_member_example()]
    return instance


def create_models_request_matching_ally_example() -> ModelsRequestMatchingAlly:
    instance = ModelsRequestMatchingAlly()
    instance.matching_parties = [create_models_request_match_party_example()]
    return instance


def create_models_server_example() -> ModelsServer:
    instance = ModelsServer()
    instance.allocation_events = [create_models_allocation_event_example()]
    instance.allocation_id = randomize()
    instance.alternate_ips = [randomize()]
    instance.cpu_limit = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.custom_attribute = randomize()
    instance.deployment = randomize()
    instance.deployment_override = randomize()
    instance.game_version = randomize("version")
    instance.image_version = randomize()
    instance.ip = randomize()
    instance.is_override_game_version = randomize("bool")
    instance.job_id = randomize()
    instance.last_update = randomize("date")
    instance.mem_limit = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.params = randomize()
    instance.pod_name = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.ports = {}
    instance.protocol = randomize()
    instance.provider = randomize()
    instance.region = randomize()
    instance.session_id = randomize("uid")
    instance.status = randomize()
    instance.status_history = [create_models_status_history_example()]
    instance.termination_reason = randomize()
    return instance


def create_models_server_session_response_example() -> ModelsServerSessionResponse:
    instance = ModelsServerSessionResponse()
    instance.session_id = randomize("uid")
    return instance


def create_models_session_example() -> ModelsSession:
    instance = ModelsSession()
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.provider = randomize()
    instance.region = randomize()
    instance.server = create_models_server_example()
    return instance


def create_models_session_response_example() -> ModelsSessionResponse:
    instance = ModelsSessionResponse()
    instance.session = create_models_session_example()
    return instance


def create_models_shutdown_server_request_example() -> ModelsShutdownServerRequest:
    instance = ModelsShutdownServerRequest()
    instance.kill_me = randomize("bool")
    instance.pod_name = randomize()
    return instance


def create_models_status_history_example() -> ModelsStatusHistory:
    instance = ModelsStatusHistory()
    instance.status = randomize()
    instance.time_stamp = randomize("date")
    return instance


def create_models_update_deployment_override_request_example() -> (
    ModelsUpdateDeploymentOverrideRequest
):
    instance = ModelsUpdateDeploymentOverrideRequest()
    instance.buffer_count = randomize("int", min_val=1, max_val=1000)
    instance.buffer_percent = randomize("int", min_val=1, max_val=1000)
    instance.configuration = randomize()
    instance.enable_region_overrides = randomize("bool")
    instance.game_version = randomize("version")
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.min_count = randomize("int", min_val=1, max_val=1000)
    instance.regions = [randomize()]
    instance.session_timeout = randomize("int", min_val=1, max_val=1000)
    instance.unlimited = randomize("bool")
    instance.use_buffer_percent = randomize("bool")
    return instance


def create_models_update_deployment_request_example() -> ModelsUpdateDeploymentRequest:
    instance = ModelsUpdateDeploymentRequest()
    instance.allow_version_override = randomize("bool")
    instance.buffer_count = randomize("int", min_val=1, max_val=1000)
    instance.buffer_percent = randomize("int", min_val=1, max_val=1000)
    instance.configuration = randomize()
    instance.enable_region_overrides = randomize("bool")
    instance.game_version = randomize("version")
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.min_count = randomize("int", min_val=1, max_val=1000)
    instance.regions = [randomize()]
    instance.session_timeout = randomize("int", min_val=1, max_val=1000)
    instance.unlimited = randomize("bool")
    instance.use_buffer_percent = randomize("bool")
    return instance


def create_models_update_dsm_config_request_example() -> ModelsUpdateDSMConfigRequest:
    instance = ModelsUpdateDSMConfigRequest()
    instance.claim_timeout = randomize("int", min_val=1, max_val=1000)
    instance.creation_timeout = randomize("int", min_val=1, max_val=1000)
    instance.default_version = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.protocol = randomize()
    instance.providers = [randomize()]
    instance.session_timeout = randomize("int", min_val=1, max_val=1000)
    instance.unreachable_timeout = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_update_pod_config_request_example() -> ModelsUpdatePodConfigRequest:
    instance = ModelsUpdatePodConfigRequest()
    instance.cpu_limit = randomize("int", min_val=1, max_val=1000)
    instance.mem_limit = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.params = randomize()
    return instance


def create_models_update_port_request_example() -> ModelsUpdatePortRequest:
    instance = ModelsUpdatePortRequest()
    instance.name = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_update_region_override_request_example() -> (
    ModelsUpdateRegionOverrideRequest
):
    instance = ModelsUpdateRegionOverrideRequest()
    instance.buffer_count = randomize("int", min_val=1, max_val=1000)
    instance.buffer_percent = randomize("int", min_val=1, max_val=1000)
    instance.max_count = randomize("int", min_val=1, max_val=1000)
    instance.min_count = randomize("int", min_val=1, max_val=1000)
    instance.unlimited = randomize("bool")
    instance.use_buffer_percent = randomize("bool")
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance
