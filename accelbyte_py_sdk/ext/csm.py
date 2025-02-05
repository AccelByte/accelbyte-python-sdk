# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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

from ..api.csm.models import ApimodelAppItem
from ..api.csm.models import ApimodelAutoscalingRequest
from ..api.csm.models import ApimodelAutoscalingResponse
from ..api.csm.models import ApimodelBulkSubscribeItem
from ..api.csm.models import ApimodelBulkSubscribeRequest
from ..api.csm.models import ApimodelCPURequest
from ..api.csm.models import ApimodelCPUResponse
from ..api.csm.models import ApimodelCSMAppLimitsResponse
from ..api.csm.models import ApimodelCreateAppV2Request
from ..api.csm.models import ApimodelCreateDeploymentV2Request
from ..api.csm.models import ApimodelCreateDeploymentV2Response
from ..api.csm.models import ApimodelGetAppImageListV2DataItem
from ..api.csm.models import ApimodelGetAppImageListV2DataItemImageScanResult
from ..api.csm.models import ApimodelGetAppImageListV2DataItemImageScanStatus
from ..api.csm.models import ApimodelGetAppImageListV2Response
from ..api.csm.models import ApimodelGetAppListV2Request
from ..api.csm.models import ApimodelGetAppListV2Response
from ..api.csm.models import ApimodelGetDeploymentListV2DataItem
from ..api.csm.models import ApimodelGetDeploymentListV2Request
from ..api.csm.models import ApimodelGetDeploymentListV2Response
from ..api.csm.models import ApimodelGetListOfConfigurationsV2DataItem
from ..api.csm.models import ApimodelGetListOfConfigurationsV2Response
from ..api.csm.models import ApimodelGetNotificationSubscriberItem
from ..api.csm.models import ApimodelGetNotificationSubscriberListResponse
from ..api.csm.models import ApimodelGetNotificationSubscriberStatusResponse
from ..api.csm.models import ApimodelIncreaseLimitFormRequest
from ..api.csm.models import ApimodelMemoryRequest
from ..api.csm.models import ApimodelMemoryResponse
from ..api.csm.models import ApimodelReplicaRequest
from ..api.csm.models import ApimodelReplicaResponse
from ..api.csm.models import ApimodelSaveConfigurationV2Request
from ..api.csm.models import ApimodelSaveConfigurationV2Response
from ..api.csm.models import ApimodelSelfSubscribeNotificationRequest
from ..api.csm.models import ApimodelSubscribeNotificationRequest
from ..api.csm.models import ApimodelSubscribeNotificationResponse
from ..api.csm.models import ApimodelSubscriberItemRequest
from ..api.csm.models import ApimodelSubscriberItemResponse
from ..api.csm.models import ApimodelUpdateAppResourceRequest
from ..api.csm.models import ApimodelUpdateAppV2Request
from ..api.csm.models import ApimodelUpdateConfigurationV2Request
from ..api.csm.models import ApimodelUpdateConfigurationV2Response
from ..api.csm.models import GeneratedCreateAppV1Request
from ..api.csm.models import GeneratedCreateAppV1Response
from ..api.csm.models import GeneratedCreateDeploymentV1Request
from ..api.csm.models import GeneratedCreateDeploymentV1Response
from ..api.csm.models import GeneratedDeleteAppImagesV1Request
from ..api.csm.models import GeneratedGetAppImageListV1DataItem
from ..api.csm.models import GeneratedGetAppImageListV1DataItemImageScanStatus
from ..api.csm.models import GeneratedGetAppImageListV1Response
from ..api.csm.models import GeneratedGetAppListV1DataItem
from ..api.csm.models import GeneratedGetAppListV1Request
from ..api.csm.models import GeneratedGetAppListV1Response
from ..api.csm.models import GeneratedGetAppReleaseV1Response
from ..api.csm.models import GeneratedGetAppV1Response
from ..api.csm.models import GeneratedGetDeploymentListV1DataItem
from ..api.csm.models import GeneratedGetDeploymentListV1Request
from ..api.csm.models import GeneratedGetDeploymentListV1Response
from ..api.csm.models import GeneratedGetDeploymentV1Response
from ..api.csm.models import GeneratedGetListOfConfigurationsV1DataItem
from ..api.csm.models import GeneratedGetListOfConfigurationsV1Response
from ..api.csm.models import GeneratedPagination
from ..api.csm.models import GeneratedSaveConfigurationV1Request
from ..api.csm.models import GeneratedSaveConfigurationV1Response
from ..api.csm.models import GeneratedStartAppV1Request
from ..api.csm.models import GeneratedStartAppV1Response
from ..api.csm.models import GeneratedStopAppV1Request
from ..api.csm.models import GeneratedStopAppV1Response
from ..api.csm.models import GeneratedUpdateAppV1Request
from ..api.csm.models import GeneratedUpdateAppV1Response
from ..api.csm.models import GeneratedUpdateConfigurationV1Request
from ..api.csm.models import GeneratedUpdateConfigurationV1Response
from ..api.csm.models import LogAppMessageDeclaration
from ..api.csm.models import ModelCSMAutoscalingDefaults
from ..api.csm.models import ModelImageScanFinding
from ..api.csm.models import ResponseErrorResponse


def create_apimodel_app_item_example() -> ApimodelAppItem:
    instance = ApimodelAppItem()
    instance.app_id = randomize("uid")
    instance.app_name = randomize()
    instance.app_status = randomize()
    instance.created_at = randomize()
    instance.game_name = randomize()
    instance.is_resource_applied = randomize("bool")
    instance.scenario = randomize()
    instance.updated_at = randomize()
    instance.vm_sharing_configuration = randomize()
    instance.app_repo_arn = randomize()
    instance.app_repo_url = randomize("url")
    instance.autoscaling = create_apimodel_autoscaling_response_example()
    instance.base_path = randomize()
    instance.cpu = create_apimodel_cpu_response_example()
    instance.deleted_at = randomize()
    instance.deployment_created_at = randomize()
    instance.deployment_id = randomize()
    instance.deployment_image_tag = randomize()
    instance.description = randomize()
    instance.memory = create_apimodel_memory_response_example()
    instance.message = randomize()
    instance.replica = create_apimodel_replica_response_example()
    instance.service_public_url = randomize("url")
    instance.service_url = randomize("url")
    return instance


def create_apimodel_autoscaling_request_example() -> ApimodelAutoscalingRequest:
    instance = ApimodelAutoscalingRequest()
    instance.target_cpu_utilization_percent = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_autoscaling_response_example() -> ApimodelAutoscalingResponse:
    instance = ApimodelAutoscalingResponse()
    instance.target_cpu_utilization_percent = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_bulk_subscribe_item_example() -> ApimodelBulkSubscribeItem:
    instance = ApimodelBulkSubscribeItem()
    instance.notification_type = {}
    instance.user_id = randomize("uid")
    return instance


def create_apimodel_bulk_subscribe_request_example() -> ApimodelBulkSubscribeRequest:
    instance = ApimodelBulkSubscribeRequest()
    instance.subscribers = [create_apimodel_bulk_subscribe_item_example()]
    return instance


def create_apimodel_cpu_request_example() -> ApimodelCPURequest:
    instance = ApimodelCPURequest()
    instance.request_cpu = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_cpu_response_example() -> ApimodelCPUResponse:
    instance = ApimodelCPUResponse()
    instance.request_cpu = randomize("int", min_val=1, max_val=1000)
    instance.cpu_limit = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_create_app_v2_request_example() -> ApimodelCreateAppV2Request:
    instance = ApimodelCreateAppV2Request()
    instance.scenario = randomize()
    instance.autoscaling = create_apimodel_autoscaling_request_example()
    instance.cpu = create_apimodel_cpu_request_example()
    instance.description = randomize()
    instance.memory = create_apimodel_memory_request_example()
    instance.replica = create_apimodel_replica_request_example()
    instance.vm_sharing_configuration = randomize()
    return instance


def create_apimodel_create_deployment_v2_request_example() -> (
    ApimodelCreateDeploymentV2Request
):
    instance = ApimodelCreateDeploymentV2Request()
    instance.image_tag = randomize()
    return instance


def create_apimodel_create_deployment_v2_response_example() -> (
    ApimodelCreateDeploymentV2Response
):
    instance = ApimodelCreateDeploymentV2Response()
    instance.deployment_id = randomize()
    return instance


def create_apimodel_csm_app_limits_response_example() -> ApimodelCSMAppLimitsResponse:
    instance = ApimodelCSMAppLimitsResponse()
    instance.autoscaling = create_model_csm_autoscaling_defaults_example()
    instance.extend_app_cpu_limit = randomize("int", min_val=1, max_val=1000)
    instance.extend_app_event_handler_cpu_limit = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.extend_app_memory_limit = randomize("int", min_val=1, max_val=1000)
    instance.extend_app_replica_limit = randomize("int", min_val=1, max_val=1000)
    instance.extend_appe_event_handler_memory_limit = randomize(
        "int", min_val=1, max_val=1000
    )
    instance.max_subscriber_count = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_get_app_image_list_v2_data_item_example() -> (
    ApimodelGetAppImageListV2DataItem
):
    instance = ApimodelGetAppImageListV2DataItem()
    instance.image_digest = randomize()
    instance.image_tag = randomize()
    instance.size = randomize("int", min_val=1, max_val=1000)
    instance.image_scan_result = (
        create_apimodel_get_app_image_list_v2_data_item_image_scan_result_example()
    )
    instance.image_scan_status = (
        create_apimodel_get_app_image_list_v2_data_item_image_scan_status_example()
    )
    instance.updated_at = randomize()
    return instance


def create_apimodel_get_app_image_list_v2_data_item_image_scan_result_example() -> (
    ApimodelGetAppImageListV2DataItemImageScanResult
):
    instance = ApimodelGetAppImageListV2DataItemImageScanResult()
    instance.finding_severity_counts = {}
    instance.findings = [create_model_image_scan_finding_example()]
    return instance


def create_apimodel_get_app_image_list_v2_data_item_image_scan_status_example() -> (
    ApimodelGetAppImageListV2DataItemImageScanStatus
):
    instance = ApimodelGetAppImageListV2DataItemImageScanStatus()
    instance.status = randomize()
    instance.description = randomize()
    return instance


def create_apimodel_get_app_image_list_v2_response_example() -> (
    ApimodelGetAppImageListV2Response
):
    instance = ApimodelGetAppImageListV2Response()
    instance.data = [create_apimodel_get_app_image_list_v2_data_item_example()]
    instance.vulnerability_status = randomize()
    instance.paging = create_generated_pagination_example()
    return instance


def create_apimodel_get_app_list_v2_request_example() -> ApimodelGetAppListV2Request:
    instance = ApimodelGetAppListV2Request()
    instance.app_names = [randomize()]
    instance.app_statuses = [randomize()]
    instance.fuzzy_app_name = randomize()
    instance.scenario = randomize()
    return instance


def create_apimodel_get_app_list_v2_response_example() -> ApimodelGetAppListV2Response:
    instance = ApimodelGetAppListV2Response()
    instance.data = [create_apimodel_app_item_example()]
    instance.paging = create_generated_pagination_example()
    return instance


def create_apimodel_get_deployment_list_v2_data_item_example() -> (
    ApimodelGetDeploymentListV2DataItem
):
    instance = ApimodelGetDeploymentListV2DataItem()
    instance.deployment_id = randomize()
    instance.image_tag = randomize()
    instance.status = randomize()
    instance.deleted_at = randomize()
    instance.message = randomize()
    instance.updated_at = randomize()
    return instance


def create_apimodel_get_deployment_list_v2_request_example() -> (
    ApimodelGetDeploymentListV2Request
):
    instance = ApimodelGetDeploymentListV2Request()
    instance.app_ids = [randomize()]
    instance.deployment_ids = [randomize()]
    instance.statuses = [randomize()]
    return instance


def create_apimodel_get_deployment_list_v2_response_example() -> (
    ApimodelGetDeploymentListV2Response
):
    instance = ApimodelGetDeploymentListV2Response()
    instance.data = [create_apimodel_get_deployment_list_v2_data_item_example()]
    instance.paging = create_generated_pagination_example()
    return instance


def create_apimodel_get_list_of_configurations_v2_data_item_example() -> (
    ApimodelGetListOfConfigurationsV2DataItem
):
    instance = ApimodelGetListOfConfigurationsV2DataItem()
    instance.config_id = randomize()
    instance.config_name = randomize()
    instance.config_type = randomize()
    instance.deployment_status = randomize()
    instance.is_hidden = randomize("bool")
    instance.value = randomize()
    instance.apply_mask = randomize("bool")
    instance.description = randomize()
    instance.editable = randomize("bool")
    instance.source = randomize()
    return instance


def create_apimodel_get_list_of_configurations_v2_response_example() -> (
    ApimodelGetListOfConfigurationsV2Response
):
    instance = ApimodelGetListOfConfigurationsV2Response()
    instance.data = [create_apimodel_get_list_of_configurations_v2_data_item_example()]
    instance.paging = create_generated_pagination_example()
    return instance


def create_apimodel_get_notification_subscriber_item_example() -> (
    ApimodelGetNotificationSubscriberItem
):
    instance = ApimodelGetNotificationSubscriberItem()
    instance.notification_type = {}
    instance.subscription_id = randomize()
    instance.user_id = randomize("uid")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    return instance


def create_apimodel_get_notification_subscriber_list_response_example() -> (
    ApimodelGetNotificationSubscriberListResponse
):
    instance = ApimodelGetNotificationSubscriberListResponse()
    instance.max_subscriptions = randomize("int", min_val=1, max_val=1000)
    instance.subscriptions = [
        create_apimodel_get_notification_subscriber_item_example()
    ]
    return instance


def create_apimodel_get_notification_subscriber_status_response_example() -> (
    ApimodelGetNotificationSubscriberStatusResponse
):
    instance = ApimodelGetNotificationSubscriberStatusResponse()
    instance.max_subscription = randomize("int", min_val=1, max_val=1000)
    instance.notification_type = randomize()
    instance.subscribed = randomize("bool")
    instance.subscriptions_count = randomize("int", min_val=1, max_val=1000)
    instance.user_id = randomize("uid")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    return instance


def create_apimodel_increase_limit_form_request_example() -> (
    ApimodelIncreaseLimitFormRequest
):
    instance = ApimodelIncreaseLimitFormRequest()
    instance.client_email = randomize()
    instance.request_reason = randomize()
    instance.preferred_limit_replica = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_memory_request_example() -> ApimodelMemoryRequest:
    instance = ApimodelMemoryRequest()
    instance.request_memory = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_memory_response_example() -> ApimodelMemoryResponse:
    instance = ApimodelMemoryResponse()
    instance.memory_limit = randomize("int", min_val=1, max_val=1000)
    instance.request_memory = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_replica_request_example() -> ApimodelReplicaRequest:
    instance = ApimodelReplicaRequest()
    instance.max_replica = randomize("int", min_val=1, max_val=1000)
    instance.min_replica = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_replica_response_example() -> ApimodelReplicaResponse:
    instance = ApimodelReplicaResponse()
    instance.current_replica = randomize("int", min_val=1, max_val=1000)
    instance.max_replica = randomize("int", min_val=1, max_val=1000)
    instance.min_replica = randomize("int", min_val=1, max_val=1000)
    instance.replica_limit = randomize("int", min_val=1, max_val=1000)
    return instance


def create_apimodel_save_configuration_v2_request_example() -> (
    ApimodelSaveConfigurationV2Request
):
    instance = ApimodelSaveConfigurationV2Request()
    instance.config_name = randomize()
    instance.source = randomize()
    instance.value = randomize()
    instance.apply_mask = randomize("bool")
    instance.description = randomize()
    return instance


def create_apimodel_save_configuration_v2_response_example() -> (
    ApimodelSaveConfigurationV2Response
):
    instance = ApimodelSaveConfigurationV2Response()
    instance.config_id = randomize()
    instance.config_name = randomize()
    return instance


def create_apimodel_self_subscribe_notification_request_example() -> (
    ApimodelSelfSubscribeNotificationRequest
):
    instance = ApimodelSelfSubscribeNotificationRequest()
    instance.notification_type = randomize()
    return instance


def create_apimodel_subscribe_notification_request_example() -> (
    ApimodelSubscribeNotificationRequest
):
    instance = ApimodelSubscribeNotificationRequest()
    instance.notification_type = randomize()
    instance.subscribers = [create_apimodel_subscriber_item_request_example()]
    return instance


def create_apimodel_subscribe_notification_response_example() -> (
    ApimodelSubscribeNotificationResponse
):
    instance = ApimodelSubscribeNotificationResponse()
    instance.notification_type = randomize()
    instance.subscriptions = [create_apimodel_subscriber_item_response_example()]
    return instance


def create_apimodel_subscriber_item_request_example() -> ApimodelSubscriberItemRequest:
    instance = ApimodelSubscriberItemRequest()
    instance.user_id = randomize("uid")
    return instance


def create_apimodel_subscriber_item_response_example() -> (
    ApimodelSubscriberItemResponse
):
    instance = ApimodelSubscriberItemResponse()
    instance.id_ = randomize()
    instance.user_id = randomize("uid")
    instance.display_name = randomize("slug")
    instance.email_address = randomize("email")
    instance.notification_type = randomize()
    return instance


def create_apimodel_update_app_resource_request_example() -> (
    ApimodelUpdateAppResourceRequest
):
    instance = ApimodelUpdateAppResourceRequest()
    instance.autoscaling = create_apimodel_autoscaling_request_example()
    instance.cpu = create_apimodel_cpu_request_example()
    instance.memory = create_apimodel_memory_request_example()
    instance.replica = create_apimodel_replica_request_example()
    instance.vm_sharing_configuration = randomize()
    return instance


def create_apimodel_update_app_v2_request_example() -> ApimodelUpdateAppV2Request:
    instance = ApimodelUpdateAppV2Request()
    instance.description = randomize()
    return instance


def create_apimodel_update_configuration_v2_request_example() -> (
    ApimodelUpdateConfigurationV2Request
):
    instance = ApimodelUpdateConfigurationV2Request()
    instance.value = randomize()
    instance.apply_mask = randomize("bool")
    instance.description = randomize()
    return instance


def create_apimodel_update_configuration_v2_response_example() -> (
    ApimodelUpdateConfigurationV2Response
):
    instance = ApimodelUpdateConfigurationV2Response()
    instance.config_id = randomize()
    instance.config_name = randomize()
    instance.value = randomize()
    instance.apply_mask = randomize("bool")
    instance.description = randomize()
    instance.source = randomize()
    return instance


def create_generated_create_app_v1_request_example() -> GeneratedCreateAppV1Request:
    instance = GeneratedCreateAppV1Request()
    instance.description = randomize()
    instance.scenario = randomize()
    return instance


def create_generated_create_app_v1_response_example() -> GeneratedCreateAppV1Response:
    instance = GeneratedCreateAppV1Response()
    instance.status_url = randomize("url")
    return instance


def create_generated_create_deployment_v1_request_example() -> (
    GeneratedCreateDeploymentV1Request
):
    instance = GeneratedCreateDeploymentV1Request()
    instance.image_tag = randomize()
    instance.description = randomize()
    return instance


def create_generated_create_deployment_v1_response_example() -> (
    GeneratedCreateDeploymentV1Response
):
    instance = GeneratedCreateDeploymentV1Response()
    instance.deployment_id = randomize()
    return instance


def create_generated_delete_app_images_v1_request_example() -> (
    GeneratedDeleteAppImagesV1Request
):
    instance = GeneratedDeleteAppImagesV1Request()
    instance.image_tags = [randomize()]
    return instance


def create_generated_get_app_image_list_v1_data_item_example() -> (
    GeneratedGetAppImageListV1DataItem
):
    instance = GeneratedGetAppImageListV1DataItem()
    instance.image_digest = randomize()
    instance.image_tag = randomize()
    instance.image_scan_status = (
        create_generated_get_app_image_list_v1_data_item_image_scan_status_example()
    )
    instance.size = randomize("int", min_val=1, max_val=1000)
    instance.updated_at = randomize()
    return instance


def create_generated_get_app_image_list_v1_data_item_image_scan_status_example() -> (
    GeneratedGetAppImageListV1DataItemImageScanStatus
):
    instance = GeneratedGetAppImageListV1DataItemImageScanStatus()
    instance.description = randomize()
    instance.status = randomize()
    return instance


def create_generated_get_app_image_list_v1_response_example() -> (
    GeneratedGetAppImageListV1Response
):
    instance = GeneratedGetAppImageListV1Response()
    instance.data = [create_generated_get_app_image_list_v1_data_item_example()]
    instance.paging = create_generated_pagination_example()
    return instance


def create_generated_get_app_list_v1_data_item_example() -> (
    GeneratedGetAppListV1DataItem
):
    instance = GeneratedGetAppListV1DataItem()
    instance.deployment_created_at = randomize()
    instance.deployment_id = randomize()
    instance.deployment_image_tag = randomize()
    instance.app_id = randomize("uid")
    instance.app_name = randomize()
    instance.app_release_status = randomize()
    instance.app_repo_arn = randomize()
    instance.app_repo_url = randomize("url")
    instance.app_status = randomize()
    instance.base_path = randomize()
    instance.deleted_at = randomize()
    instance.deployment_status = randomize()
    instance.description = randomize()
    instance.message = randomize()
    instance.scenario = randomize()
    instance.service_public_url = randomize("url")
    instance.service_url = randomize("url")
    instance.status = randomize()
    instance.updated_at = randomize()
    return instance


def create_generated_get_app_list_v1_request_example() -> GeneratedGetAppListV1Request:
    instance = GeneratedGetAppListV1Request()
    instance.app_names = [randomize()]
    instance.statuses = [randomize()]
    instance.fuzzy_app_name = randomize()
    instance.scenario = randomize()
    return instance


def create_generated_get_app_list_v1_response_example() -> (
    GeneratedGetAppListV1Response
):
    instance = GeneratedGetAppListV1Response()
    instance.data = [create_generated_get_app_list_v1_data_item_example()]
    instance.paging = create_generated_pagination_example()
    return instance


def create_generated_get_app_release_v1_response_example() -> (
    GeneratedGetAppReleaseV1Response
):
    instance = GeneratedGetAppReleaseV1Response()
    instance.deployment_id = randomize()
    instance.image_tag = randomize()
    instance.release_date = randomize()
    return instance


def create_generated_get_app_v1_response_example() -> GeneratedGetAppV1Response:
    instance = GeneratedGetAppV1Response()
    instance.deployment_created_at = randomize()
    instance.deployment_id = randomize()
    instance.deployment_image_tag = randomize()
    instance.app_id = randomize("uid")
    instance.app_name = randomize()
    instance.app_release_status = randomize()
    instance.app_repo_arn = randomize()
    instance.app_repo_url = randomize("url")
    instance.app_status = randomize()
    instance.base_path = randomize()
    instance.created_at = randomize()
    instance.deleted_at = randomize()
    instance.deployment_status = randomize()
    instance.description = randomize()
    instance.message = randomize()
    instance.scenario = randomize()
    instance.service_public_url = randomize("url")
    instance.service_url = randomize("url")
    instance.status = randomize()
    instance.updated_at = randomize()
    return instance


def create_generated_get_deployment_list_v1_data_item_example() -> (
    GeneratedGetDeploymentListV1DataItem
):
    instance = GeneratedGetDeploymentListV1DataItem()
    instance.deployment_id = randomize()
    instance.deleted_at = randomize()
    instance.image_tag = randomize()
    instance.message = randomize()
    instance.status = randomize()
    instance.updated_at = randomize()
    return instance


def create_generated_get_deployment_list_v1_request_example() -> (
    GeneratedGetDeploymentListV1Request
):
    instance = GeneratedGetDeploymentListV1Request()
    instance.app_ids = [randomize()]
    instance.deployment_ids = [randomize()]
    instance.statuses = [randomize()]
    return instance


def create_generated_get_deployment_list_v1_response_example() -> (
    GeneratedGetDeploymentListV1Response
):
    instance = GeneratedGetDeploymentListV1Response()
    instance.data = [create_generated_get_deployment_list_v1_data_item_example()]
    instance.paging = create_generated_pagination_example()
    return instance


def create_generated_get_deployment_v1_response_example() -> (
    GeneratedGetDeploymentV1Response
):
    instance = GeneratedGetDeploymentV1Response()
    instance.deployment_id = randomize()
    instance.deleted_at = randomize()
    instance.image_tag = randomize()
    instance.message = randomize()
    instance.status = randomize()
    instance.updated_at = randomize()
    return instance


def create_generated_get_list_of_configurations_v1_data_item_example() -> (
    GeneratedGetListOfConfigurationsV1DataItem
):
    instance = GeneratedGetListOfConfigurationsV1DataItem()
    instance.apply_mask = randomize("bool")
    instance.config_id = randomize()
    instance.config_name = randomize()
    instance.config_type = randomize()
    instance.deployment_status = randomize()
    instance.description = randomize()
    instance.editable = randomize("bool")
    instance.is_hidden = randomize("bool")
    instance.source = randomize()
    instance.value = randomize()
    return instance


def create_generated_get_list_of_configurations_v1_response_example() -> (
    GeneratedGetListOfConfigurationsV1Response
):
    instance = GeneratedGetListOfConfigurationsV1Response()
    instance.data = [create_generated_get_list_of_configurations_v1_data_item_example()]
    instance.paging = create_generated_pagination_example()
    return instance


def create_generated_pagination_example() -> GeneratedPagination:
    instance = GeneratedPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_generated_save_configuration_v1_request_example() -> (
    GeneratedSaveConfigurationV1Request
):
    instance = GeneratedSaveConfigurationV1Request()
    instance.config_name = randomize()
    instance.source = randomize()
    instance.value = randomize()
    instance.apply_mask = randomize("bool")
    instance.description = randomize()
    return instance


def create_generated_save_configuration_v1_response_example() -> (
    GeneratedSaveConfigurationV1Response
):
    instance = GeneratedSaveConfigurationV1Response()
    instance.config_id = randomize()
    instance.config_name = randomize()
    return instance


def create_generated_start_app_v1_request_example() -> GeneratedStartAppV1Request:
    instance = GeneratedStartAppV1Request()
    instance.reason = randomize()
    return instance


def create_generated_start_app_v1_response_example() -> GeneratedStartAppV1Response:
    instance = GeneratedStartAppV1Response()
    instance.status_url = randomize("url")
    return instance


def create_generated_stop_app_v1_request_example() -> GeneratedStopAppV1Request:
    instance = GeneratedStopAppV1Request()
    instance.reason = randomize()
    return instance


def create_generated_stop_app_v1_response_example() -> GeneratedStopAppV1Response:
    instance = GeneratedStopAppV1Response()
    instance.status_url = randomize("url")
    return instance


def create_generated_update_app_v1_request_example() -> GeneratedUpdateAppV1Request:
    instance = GeneratedUpdateAppV1Request()
    instance.description = randomize()
    return instance


def create_generated_update_app_v1_response_example() -> GeneratedUpdateAppV1Response:
    instance = GeneratedUpdateAppV1Response()
    instance.app_id = randomize("uid")
    instance.app_name = randomize()
    instance.app_repo_arn = randomize()
    instance.app_repo_url = randomize("url")
    instance.deleted_at = randomize()
    instance.description = randomize()
    instance.message = randomize()
    instance.scenario = randomize()
    instance.service_url = randomize("url")
    instance.status = randomize()
    instance.updated_at = randomize()
    return instance


def create_generated_update_configuration_v1_request_example() -> (
    GeneratedUpdateConfigurationV1Request
):
    instance = GeneratedUpdateConfigurationV1Request()
    instance.apply_mask = randomize("bool")
    instance.description = randomize()
    instance.value = randomize()
    return instance


def create_generated_update_configuration_v1_response_example() -> (
    GeneratedUpdateConfigurationV1Response
):
    instance = GeneratedUpdateConfigurationV1Response()
    instance.apply_mask = randomize("bool")
    instance.config_id = randomize()
    instance.config_name = randomize()
    instance.description = randomize()
    instance.source = randomize()
    instance.value = randomize()
    return instance


def create_log_app_message_declaration_example() -> LogAppMessageDeclaration:
    instance = LogAppMessageDeclaration()
    instance.attributes = [randomize()]
    instance.code = randomize()
    instance.code_name = randomize()
    instance.section = randomize()
    instance.service = randomize()
    instance.text = randomize()
    return instance


def create_model_csm_autoscaling_defaults_example() -> ModelCSMAutoscalingDefaults:
    instance = ModelCSMAutoscalingDefaults()
    instance.cpu_utilization_default_percent = randomize("int", min_val=1, max_val=1000)
    instance.cpu_utilization_max_percent = randomize("int", min_val=1, max_val=1000)
    instance.cpu_utilization_min_percent = randomize("int", min_val=1, max_val=1000)
    return instance


def create_model_image_scan_finding_example() -> ModelImageScanFinding:
    instance = ModelImageScanFinding()
    instance.name = randomize()
    instance.severity = randomize()
    instance.uri = randomize()
    instance.description = randomize()
    return instance


def create_response_error_response_example() -> ResponseErrorResponse:
    instance = ResponseErrorResponse()
    instance.error = randomize()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.errors = randomize()
    instance.message_variables = {randomize(): randomize()}
    instance.name = randomize()
    instance.reason = randomize()
    return instance
