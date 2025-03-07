# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the Custom Service Manager."""

__version__ = "1.22.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .apimodel_app_item import ApimodelAppItem
from .apimodel_autoscaling_request import ApimodelAutoscalingRequest
from .apimodel_autoscaling_response import ApimodelAutoscalingResponse
from .apimodel_bulk_subscribe_item import ApimodelBulkSubscribeItem
from .apimodel_bulk_subscribe_request import ApimodelBulkSubscribeRequest
from .apimodel_cpu_request import ApimodelCPURequest
from .apimodel_cpu_response import ApimodelCPUResponse
from .apimodel_create_app_v2_request import ApimodelCreateAppV2Request
from .apimodel_create_deployment_v2_request import ApimodelCreateDeploymentV2Request
from .apimodel_create_deployment_v2_response import ApimodelCreateDeploymentV2Response
from .apimodel_csm_app_limits_response import ApimodelCSMAppLimitsResponse
from .apimodel_get_app_image_list_v2_data_item import ApimodelGetAppImageListV2DataItem
from .apimodel_get_app_image_list_v2_data_item_image_scan_result import (
    ApimodelGetAppImageListV2DataItemImageScanResult,
)
from .apimodel_get_app_image_list_v2_data_item_image_scan_status import (
    ApimodelGetAppImageListV2DataItemImageScanStatus,
)
from .apimodel_get_app_image_list_v2_response import ApimodelGetAppImageListV2Response
from .apimodel_get_app_list_v2_request import ApimodelGetAppListV2Request
from .apimodel_get_app_list_v2_response import ApimodelGetAppListV2Response
from .apimodel_get_deployment_list_v2_data_item import (
    ApimodelGetDeploymentListV2DataItem,
)
from .apimodel_get_deployment_list_v2_request import ApimodelGetDeploymentListV2Request
from .apimodel_get_deployment_list_v2_response import (
    ApimodelGetDeploymentListV2Response,
)
from .apimodel_get_list_of_configurations_v2_data_item import (
    ApimodelGetListOfConfigurationsV2DataItem,
)
from .apimodel_get_list_of_configurations_v2_response import (
    ApimodelGetListOfConfigurationsV2Response,
)
from .apimodel_get_notification_subscriber_item import (
    ApimodelGetNotificationSubscriberItem,
)
from .apimodel_get_notification_subscriber_list_response import (
    ApimodelGetNotificationSubscriberListResponse,
)
from .apimodel_get_notification_subscriber_status_response import (
    ApimodelGetNotificationSubscriberStatusResponse,
)
from .apimodel_increase_limit_form_request import ApimodelIncreaseLimitFormRequest
from .apimodel_memory_request import ApimodelMemoryRequest
from .apimodel_memory_response import ApimodelMemoryResponse
from .apimodel_replica_request import ApimodelReplicaRequest
from .apimodel_replica_response import ApimodelReplicaResponse
from .apimodel_save_configuration_v2_request import ApimodelSaveConfigurationV2Request
from .apimodel_save_configuration_v2_response import ApimodelSaveConfigurationV2Response
from .apimodel_self_subscribe_notification_request import (
    ApimodelSelfSubscribeNotificationRequest,
)
from .apimodel_subscribe_notification_request import (
    ApimodelSubscribeNotificationRequest,
)
from .apimodel_subscribe_notification_response import (
    ApimodelSubscribeNotificationResponse,
)
from .apimodel_subscriber_item_request import ApimodelSubscriberItemRequest
from .apimodel_subscriber_item_response import ApimodelSubscriberItemResponse
from .apimodel_update_app_resource_request import ApimodelUpdateAppResourceRequest
from .apimodel_update_app_v2_request import ApimodelUpdateAppV2Request
from .apimodel_update_configuration_v2_request import (
    ApimodelUpdateConfigurationV2Request,
)
from .apimodel_update_configuration_v2_response import (
    ApimodelUpdateConfigurationV2Response,
)
from .generated_create_app_v1_request import GeneratedCreateAppV1Request
from .generated_create_app_v1_response import GeneratedCreateAppV1Response
from .generated_create_deployment_v1_request import GeneratedCreateDeploymentV1Request
from .generated_create_deployment_v1_response import GeneratedCreateDeploymentV1Response
from .generated_delete_app_images_v1_request import GeneratedDeleteAppImagesV1Request
from .generated_get_app_image_list_v1_data_item import (
    GeneratedGetAppImageListV1DataItem,
)
from .generated_get_app_image_list_v1_data_item_image_scan_status import (
    GeneratedGetAppImageListV1DataItemImageScanStatus,
)
from .generated_get_app_image_list_v1_response import GeneratedGetAppImageListV1Response
from .generated_get_app_list_v1_data_item import GeneratedGetAppListV1DataItem
from .generated_get_app_list_v1_request import GeneratedGetAppListV1Request
from .generated_get_app_list_v1_response import GeneratedGetAppListV1Response
from .generated_get_app_release_v1_response import GeneratedGetAppReleaseV1Response
from .generated_get_app_v1_response import GeneratedGetAppV1Response
from .generated_get_deployment_list_v1_data_item import (
    GeneratedGetDeploymentListV1DataItem,
)
from .generated_get_deployment_list_v1_request import (
    GeneratedGetDeploymentListV1Request,
)
from .generated_get_deployment_list_v1_response import (
    GeneratedGetDeploymentListV1Response,
)
from .generated_get_deployment_v1_response import GeneratedGetDeploymentV1Response
from .generated_get_list_of_configurations_v1_data_item import (
    GeneratedGetListOfConfigurationsV1DataItem,
)
from .generated_get_list_of_configurations_v1_response import (
    GeneratedGetListOfConfigurationsV1Response,
)
from .generated_pagination import GeneratedPagination
from .generated_save_configuration_v1_request import GeneratedSaveConfigurationV1Request
from .generated_save_configuration_v1_response import (
    GeneratedSaveConfigurationV1Response,
)
from .generated_start_app_v1_request import GeneratedStartAppV1Request
from .generated_start_app_v1_response import GeneratedStartAppV1Response
from .generated_stop_app_v1_request import GeneratedStopAppV1Request
from .generated_stop_app_v1_response import GeneratedStopAppV1Response
from .generated_update_app_v1_request import GeneratedUpdateAppV1Request
from .generated_update_app_v1_response import GeneratedUpdateAppV1Response
from .generated_update_configuration_v1_request import (
    GeneratedUpdateConfigurationV1Request,
)
from .generated_update_configuration_v1_response import (
    GeneratedUpdateConfigurationV1Response,
)
from .log_app_message_declaration import LogAppMessageDeclaration
from .model_csm_autoscaling_defaults import ModelCSMAutoscalingDefaults
from .model_image_scan_finding import ModelImageScanFinding
from .response_error_response import ResponseErrorResponse
