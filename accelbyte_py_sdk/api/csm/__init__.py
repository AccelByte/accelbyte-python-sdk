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

# app
from .wrappers import create_app_v1
from .wrappers import create_app_v1_async
from .wrappers import delete_app_v1
from .wrappers import delete_app_v1_async
from .wrappers import get_app_list_v1
from .wrappers import get_app_list_v1_async
from .wrappers import get_app_release_v1
from .wrappers import get_app_release_v1_async
from .wrappers import get_app_v1
from .wrappers import get_app_v1_async
from .wrappers import start_app_v1
from .wrappers import start_app_v1_async
from .wrappers import stop_app_v1
from .wrappers import stop_app_v1_async
from .wrappers import update_app_v1
from .wrappers import update_app_v1_async

# app_v2
from .wrappers import create_app_v2
from .wrappers import create_app_v2_async
from .wrappers import delete_app_v2
from .wrappers import delete_app_v2_async
from .wrappers import get_app_list_v2
from .wrappers import get_app_list_v2_async
from .wrappers import get_app_v2
from .wrappers import get_app_v2_async
from .wrappers import start_app_v2
from .wrappers import start_app_v2_async
from .wrappers import stop_app_v2
from .wrappers import stop_app_v2_async
from .wrappers import update_app_resources_resource_limit_form_v2
from .wrappers import update_app_resources_resource_limit_form_v2_async
from .wrappers import update_app_resources_v2
from .wrappers import update_app_resources_v2_async
from .wrappers import update_app_v2
from .wrappers import update_app_v2_async

# configuration
from .wrappers import delete_secret_v1
from .wrappers import delete_secret_v1_async
from .wrappers import delete_variable_v1
from .wrappers import delete_variable_v1_async
from .wrappers import get_list_of_secrets_v1
from .wrappers import get_list_of_secrets_v1_async
from .wrappers import get_list_of_variables_v1
from .wrappers import get_list_of_variables_v1_async
from .wrappers import save_secret_v1
from .wrappers import save_secret_v1_async
from .wrappers import save_variable_v1
from .wrappers import save_variable_v1_async
from .wrappers import update_secret_v1
from .wrappers import update_secret_v1_async
from .wrappers import update_variable_v1
from .wrappers import update_variable_v1_async

# configuration_v2
from .wrappers import delete_secret_v2
from .wrappers import delete_secret_v2_async
from .wrappers import delete_variable_v2
from .wrappers import delete_variable_v2_async
from .wrappers import get_list_of_secrets_v2
from .wrappers import get_list_of_secrets_v2_async
from .wrappers import get_list_of_variables_v2
from .wrappers import get_list_of_variables_v2_async
from .wrappers import save_secret_v2
from .wrappers import save_secret_v2_async
from .wrappers import save_variable_v2
from .wrappers import save_variable_v2_async
from .wrappers import update_secret_v2
from .wrappers import update_secret_v2_async
from .wrappers import update_variable_v2
from .wrappers import update_variable_v2_async

# deployment
from .wrappers import create_deployment_v1
from .wrappers import create_deployment_v1_async
from .wrappers import delete_deployment_v1
from .wrappers import delete_deployment_v1_async
from .wrappers import get_deployment_v1
from .wrappers import get_deployment_v1_async
from .wrappers import get_list_of_deployment_v1
from .wrappers import get_list_of_deployment_v1_async

# deployment_v2
from .wrappers import create_deployment_v2
from .wrappers import create_deployment_v2_async
from .wrappers import delete_deployment_v2
from .wrappers import delete_deployment_v2_async
from .wrappers import get_deployment_v2
from .wrappers import get_deployment_v2_async
from .wrappers import get_list_of_deployment_v2
from .wrappers import get_list_of_deployment_v2_async

# image
from .wrappers import delete_app_images_v1
from .wrappers import delete_app_images_v1_async
from .wrappers import get_app_image_list_v1
from .wrappers import get_app_image_list_v1_async

# image_v2
from .wrappers import delete_app_images_v2
from .wrappers import delete_app_images_v2_async
from .wrappers import get_app_image_list_v2
from .wrappers import get_app_image_list_v2_async

# messages
from .wrappers import public_get_messages
from .wrappers import public_get_messages_async

# notification_subscription
from .wrappers import bulk_save_subscription_app_notification_v2
from .wrappers import bulk_save_subscription_app_notification_v2_async
from .wrappers import delete_subscription_app_notification_by_user_idv2
from .wrappers import delete_subscription_app_notification_by_user_idv2_async
from .wrappers import delete_subscription_app_notification_v2
from .wrappers import delete_subscription_app_notification_v2_async
from .wrappers import get_notification_subscriber_list_v2
from .wrappers import get_notification_subscriber_list_v2_async
from .wrappers import get_subscription_v2_handler
from .wrappers import get_subscription_v2_handler_async
from .wrappers import subscribe_app_notification_v2
from .wrappers import subscribe_app_notification_v2_async
from .wrappers import subscribe_v2_handler
from .wrappers import subscribe_v2_handler_async
from .wrappers import unsubscribe_v2_handler
from .wrappers import unsubscribe_v2_handler_async

# resources_limits
from .wrappers import get_resources_limits
from .wrappers import get_resources_limits_async
