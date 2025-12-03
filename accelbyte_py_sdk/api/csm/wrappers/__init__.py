# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the Custom Service Manager."""

__version__ = "1.30.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from ._app import create_app_v1
from ._app import create_app_v1_async
from ._app import delete_app_v1
from ._app import delete_app_v1_async
from ._app import get_app_list_v1
from ._app import get_app_list_v1_async
from ._app import get_app_release_v1
from ._app import get_app_release_v1_async
from ._app import get_app_v1
from ._app import get_app_v1_async
from ._app import start_app_v1
from ._app import start_app_v1_async
from ._app import stop_app_v1
from ._app import stop_app_v1_async
from ._app import update_app_v1
from ._app import update_app_v1_async

from ._app_v2 import create_app_v2
from ._app_v2 import create_app_v2_async
from ._app_v2 import delete_app_v2
from ._app_v2 import delete_app_v2_async
from ._app_v2 import get_app_list_v2
from ._app_v2 import get_app_list_v2_async
from ._app_v2 import get_app_v2
from ._app_v2 import get_app_v2_async
from ._app_v2 import start_app_v2
from ._app_v2 import start_app_v2_async
from ._app_v2 import stop_app_v2
from ._app_v2 import stop_app_v2_async
from ._app_v2 import update_app_resources_resource_limit_form_v2
from ._app_v2 import update_app_resources_resource_limit_form_v2_async
from ._app_v2 import update_app_resources_v2
from ._app_v2 import update_app_resources_v2_async
from ._app_v2 import update_app_v2
from ._app_v2 import update_app_v2_async

from ._async_messaging import create_subscription_handler
from ._async_messaging import create_subscription_handler_async
from ._async_messaging import create_topic_handler
from ._async_messaging import create_topic_handler_async
from ._async_messaging import delete_topic_handler
from ._async_messaging import delete_topic_handler_async
from ._async_messaging import list_topics_handler
from ._async_messaging import list_topics_handler_async
from ._async_messaging import unsubscribe_topic_handler
from ._async_messaging import unsubscribe_topic_handler_async

from ._configuration import delete_secret_v1
from ._configuration import delete_secret_v1_async
from ._configuration import delete_variable_v1
from ._configuration import delete_variable_v1_async
from ._configuration import get_list_of_secrets_v1
from ._configuration import get_list_of_secrets_v1_async
from ._configuration import get_list_of_variables_v1
from ._configuration import get_list_of_variables_v1_async
from ._configuration import save_secret_v1
from ._configuration import save_secret_v1_async
from ._configuration import save_variable_v1
from ._configuration import save_variable_v1_async
from ._configuration import update_secret_v1
from ._configuration import update_secret_v1_async
from ._configuration import update_variable_v1
from ._configuration import update_variable_v1_async

from ._configuration_v2 import delete_secret_v2
from ._configuration_v2 import delete_secret_v2_async
from ._configuration_v2 import delete_variable_v2
from ._configuration_v2 import delete_variable_v2_async
from ._configuration_v2 import get_list_of_secrets_v2
from ._configuration_v2 import get_list_of_secrets_v2_async
from ._configuration_v2 import get_list_of_variables_v2
from ._configuration_v2 import get_list_of_variables_v2_async
from ._configuration_v2 import save_secret_v2
from ._configuration_v2 import save_secret_v2_async
from ._configuration_v2 import save_variable_v2
from ._configuration_v2 import save_variable_v2_async
from ._configuration_v2 import update_secret_v2
from ._configuration_v2 import update_secret_v2_async
from ._configuration_v2 import update_variable_v2
from ._configuration_v2 import update_variable_v2_async

from ._deployment import create_deployment_v1
from ._deployment import create_deployment_v1_async
from ._deployment import delete_deployment_v1
from ._deployment import delete_deployment_v1_async
from ._deployment import get_deployment_v1
from ._deployment import get_deployment_v1_async
from ._deployment import get_list_of_deployment_v1
from ._deployment import get_list_of_deployment_v1_async

from ._deployment_v2 import create_deployment_v2
from ._deployment_v2 import create_deployment_v2_async
from ._deployment_v2 import delete_deployment_v2
from ._deployment_v2 import delete_deployment_v2_async
from ._deployment_v2 import get_deployment_v2
from ._deployment_v2 import get_deployment_v2_async
from ._deployment_v2 import get_list_of_deployment_v2
from ._deployment_v2 import get_list_of_deployment_v2_async

from ._image import delete_app_images_v1
from ._image import delete_app_images_v1_async
from ._image import get_app_image_list_v1
from ._image import get_app_image_list_v1_async

from ._image_v2 import delete_app_images_v2
from ._image_v2 import delete_app_images_v2_async
from ._image_v2 import get_app_image_list_v2
from ._image_v2 import get_app_image_list_v2_async

from ._managed_resources import create_no_sql_cluster_v2
from ._managed_resources import create_no_sql_cluster_v2_async
from ._managed_resources import create_no_sql_database_credential_v2
from ._managed_resources import create_no_sql_database_credential_v2_async
from ._managed_resources import create_no_sql_database_v2
from ._managed_resources import create_no_sql_database_v2_async
from ._managed_resources import delete_no_sql_cluster_v2
from ._managed_resources import delete_no_sql_cluster_v2_async
from ._managed_resources import delete_no_sql_database_v2
from ._managed_resources import delete_no_sql_database_v2_async
from ._managed_resources import get_no_sql_access_tunnel_v2
from ._managed_resources import get_no_sql_access_tunnel_v2_async
from ._managed_resources import get_no_sql_cluster_v2
from ._managed_resources import get_no_sql_cluster_v2_async
from ._managed_resources import get_no_sql_database_v2
from ._managed_resources import get_no_sql_database_v2_async
from ._managed_resources import start_no_sql_cluster_v2
from ._managed_resources import start_no_sql_cluster_v2_async
from ._managed_resources import stop_no_sql_cluster_v2
from ._managed_resources import stop_no_sql_cluster_v2_async
from ._managed_resources import update_no_sql_cluster_v2
from ._managed_resources import update_no_sql_cluster_v2_async

from ._messages import public_get_messages
from ._messages import public_get_messages_async

from ._notification_subscription import bulk_save_subscription_app_notification_v2
from ._notification_subscription import bulk_save_subscription_app_notification_v2_async
from ._notification_subscription import (
    delete_subscription_app_notification_by_user_idv2,
)
from ._notification_subscription import (
    delete_subscription_app_notification_by_user_idv2_async,
)
from ._notification_subscription import delete_subscription_app_notification_v2
from ._notification_subscription import delete_subscription_app_notification_v2_async
from ._notification_subscription import get_notification_subscriber_list_v2
from ._notification_subscription import get_notification_subscriber_list_v2_async
from ._notification_subscription import get_subscription_v2_handler
from ._notification_subscription import get_subscription_v2_handler_async
from ._notification_subscription import subscribe_app_notification_v2
from ._notification_subscription import subscribe_app_notification_v2_async
from ._notification_subscription import subscribe_v2_handler
from ._notification_subscription import subscribe_v2_handler_async
from ._notification_subscription import unsubscribe_v2_handler
from ._notification_subscription import unsubscribe_v2_handler_async

from ._notification_subscription_v3 import delete_subscription_app_notification_v3
from ._notification_subscription_v3 import delete_subscription_app_notification_v3_async
from ._notification_subscription_v3 import get_notification_subscriber_list_v3
from ._notification_subscription_v3 import get_notification_subscriber_list_v3_async

from ._resources_limits import get_resources_limits
from ._resources_limits import get_resources_limits_async
