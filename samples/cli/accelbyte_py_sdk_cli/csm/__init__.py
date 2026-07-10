# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# custom-service-manager

from ._list_app_ui import list_app_ui
from ._create_app_ui import create_app_ui
from ._delete_app_ui import delete_app_ui
from ._upload_app_ui_file import upload_app_ui_file
from ._get_app_list_v1 import get_app_list_v1
from ._get_app_v1 import get_app_v1
from ._create_app_v1 import create_app_v1
from ._delete_app_v1 import delete_app_v1
from ._update_app_v1 import update_app_v1
from ._create_deployment_v1 import create_deployment_v1
from ._get_app_image_list_v1 import get_app_image_list_v1
from ._delete_app_images_v1 import delete_app_images_v1
from ._get_app_release_v1 import get_app_release_v1
from ._get_list_of_secrets_v1 import get_list_of_secrets_v1
from ._save_secret_v1 import save_secret_v1
from ._update_secret_v1 import update_secret_v1
from ._delete_secret_v1 import delete_secret_v1
from ._start_app_v1 import start_app_v1
from ._stop_app_v1 import stop_app_v1
from ._get_list_of_variables_v1 import get_list_of_variables_v1
from ._save_variable_v1 import save_variable_v1
from ._update_variable_v1 import update_variable_v1
from ._delete_variable_v1 import delete_variable_v1
from ._get_list_of_deployment_v1 import get_list_of_deployment_v1
from ._get_deployment_v1 import get_deployment_v1
from ._delete_deployment_v1 import delete_deployment_v1
from ._get_extend_file import get_extend_file
from ._public_get_messages import public_get_messages
from ._get_app_list_v2 import get_app_list_v2
from ._get_app_v2 import get_app_v2
from ._create_app_v2 import create_app_v2
from ._delete_app_v2 import delete_app_v2
from ._update_app_v2 import update_app_v2
from ._apply_app_config_v2 import apply_app_config_v2
from ._create_subscription_handler import create_subscription_handler
from ._unsubscribe_topic_handler import unsubscribe_topic_handler
from ._create_deployment_v2 import create_deployment_v2
from ._get_app_image_list_v2 import get_app_image_list_v2
from ._delete_app_images_v2 import delete_app_images_v2
from ._create_key_value_credential_v2 import create_key_value_credential_v2
from ._get_integration_app_key_value_cluster_v2 import (
    get_integration_app_key_value_cluster_v2,
)
from ._integrate_app_key_value_cluster_v2 import integrate_app_key_value_cluster_v2
from ._remove_integration_app_key_value_cluster_v2 import (
    remove_integration_app_key_value_cluster_v2,
)
from ._create_new_no_sql_database_credential_v2 import (
    create_new_no_sql_database_credential_v2,
)
from ._create_no_sql_database_credential_v2 import create_no_sql_database_credential_v2
from ._get_no_sql_database_v2 import get_no_sql_database_v2
from ._create_no_sql_database_v2 import create_no_sql_database_v2
from ._delete_no_sql_database_v2 import delete_no_sql_database_v2
from ._update_app_resources_v2 import update_app_resources_v2
from ._update_app_resources_resource_limit_form_v2 import (
    update_app_resources_resource_limit_form_v2,
)
from ._get_list_of_secrets_v2 import get_list_of_secrets_v2
from ._save_secret_v2 import save_secret_v2
from ._update_secret_v2 import update_secret_v2
from ._delete_secret_v2 import delete_secret_v2
from ._create_sql_database_credential_v2 import create_sql_database_credential_v2
from ._get_sql_database_v2 import get_sql_database_v2
from ._create_sql_database_v2 import create_sql_database_v2
from ._delete_sql_database_v2 import delete_sql_database_v2
from ._start_app_v2 import start_app_v2
from ._stop_app_v2 import stop_app_v2
from ._get_notification_subscriber_list_v2 import get_notification_subscriber_list_v2
from ._bulk_save_subscription_app_notification_v2 import (
    bulk_save_subscription_app_notification_v2,
)
from ._subscribe_app_notification_v2 import subscribe_app_notification_v2
from ._get_subscription_v2_handler import get_subscription_v2_handler
from ._subscribe_v2_handler import subscribe_v2_handler
from ._unsubscribe_v2_handler import unsubscribe_v2_handler
from ._delete_subscription_app_notification_by_user_idv2 import (
    delete_subscription_app_notification_by_user_idv2,
)
from ._delete_subscription_app_notification_v2 import (
    delete_subscription_app_notification_v2,
)
from ._get_list_of_variables_v2 import get_list_of_variables_v2
from ._save_variable_v2 import save_variable_v2
from ._update_variable_v2 import update_variable_v2
from ._delete_variable_v2 import delete_variable_v2
from ._list_topics_handler import list_topics_handler
from ._create_topic_handler import create_topic_handler
from ._delete_topic_handler import delete_topic_handler
from ._get_list_of_deployment_v2 import get_list_of_deployment_v2
from ._get_deployment_v2 import get_deployment_v2
from ._delete_deployment_v2 import delete_deployment_v2
from ._get_key_value_cluster_v2 import get_key_value_cluster_v2
from ._list_key_value_cluster_v2 import list_key_value_cluster_v2
from ._create_key_value_cluster_v2 import create_key_value_cluster_v2
from ._get_key_value_cluster_limit_config_v2 import (
    get_key_value_cluster_limit_config_v2,
)
from ._update_key_value_cluster_v2 import update_key_value_cluster_v2
from ._delete_key_value_cluster_v2 import delete_key_value_cluster_v2
from ._get_list_integrated_app_key_value_cluster_v2 import (
    get_list_integrated_app_key_value_cluster_v2,
)
from ._get_no_sql_cluster_v2 import get_no_sql_cluster_v2
from ._update_no_sql_cluster_v2 import update_no_sql_cluster_v2
from ._create_no_sql_cluster_v2 import create_no_sql_cluster_v2
from ._delete_no_sql_cluster_v2 import delete_no_sql_cluster_v2
from ._start_no_sql_cluster_v2 import start_no_sql_cluster_v2
from ._stop_no_sql_cluster_v2 import stop_no_sql_cluster_v2
from ._get_no_sql_access_tunnel_v2 import get_no_sql_access_tunnel_v2
from ._get_resources_limits import get_resources_limits
from ._get_sql_cluster_v2 import get_sql_cluster_v2
from ._update_sql_cluster_v2 import update_sql_cluster_v2
from ._create_sql_cluster_v2 import create_sql_cluster_v2
from ._delete_sql_cluster_v2 import delete_sql_cluster_v2
from ._start_sql_cluster_v2 import start_sql_cluster_v2
from ._stop_sql_cluster_v2 import stop_sql_cluster_v2
from ._get_sql_app_list_v2 import get_sql_app_list_v2
from ._get_no_sql_app_list_v2 import get_no_sql_app_list_v2
from ._get_notification_subscriber_list_v3 import get_notification_subscriber_list_v3
from ._delete_subscription_app_notification_v3 import (
    delete_subscription_app_notification_v3,
)
from ._get_app_debug_info_v4 import get_app_debug_info_v4
from ._update_app_debug_mode_v4 import update_app_debug_mode_v4
from ._get_app_status_progress_v4 import get_app_status_progress_v4
from ._create_app_v5 import create_app_v5


commands = [
    list_app_ui,
    create_app_ui,
    delete_app_ui,
    upload_app_ui_file,
    get_app_list_v1,
    get_app_v1,
    create_app_v1,
    delete_app_v1,
    update_app_v1,
    create_deployment_v1,
    get_app_image_list_v1,
    delete_app_images_v1,
    get_app_release_v1,
    get_list_of_secrets_v1,
    save_secret_v1,
    update_secret_v1,
    delete_secret_v1,
    start_app_v1,
    stop_app_v1,
    get_list_of_variables_v1,
    save_variable_v1,
    update_variable_v1,
    delete_variable_v1,
    get_list_of_deployment_v1,
    get_deployment_v1,
    delete_deployment_v1,
    get_extend_file,
    public_get_messages,
    get_app_list_v2,
    get_app_v2,
    create_app_v2,
    delete_app_v2,
    update_app_v2,
    apply_app_config_v2,
    create_subscription_handler,
    unsubscribe_topic_handler,
    create_deployment_v2,
    get_app_image_list_v2,
    delete_app_images_v2,
    create_key_value_credential_v2,
    get_integration_app_key_value_cluster_v2,
    integrate_app_key_value_cluster_v2,
    remove_integration_app_key_value_cluster_v2,
    create_new_no_sql_database_credential_v2,
    create_no_sql_database_credential_v2,
    get_no_sql_database_v2,
    create_no_sql_database_v2,
    delete_no_sql_database_v2,
    update_app_resources_v2,
    update_app_resources_resource_limit_form_v2,
    get_list_of_secrets_v2,
    save_secret_v2,
    update_secret_v2,
    delete_secret_v2,
    create_sql_database_credential_v2,
    get_sql_database_v2,
    create_sql_database_v2,
    delete_sql_database_v2,
    start_app_v2,
    stop_app_v2,
    get_notification_subscriber_list_v2,
    bulk_save_subscription_app_notification_v2,
    subscribe_app_notification_v2,
    get_subscription_v2_handler,
    subscribe_v2_handler,
    unsubscribe_v2_handler,
    delete_subscription_app_notification_by_user_idv2,
    delete_subscription_app_notification_v2,
    get_list_of_variables_v2,
    save_variable_v2,
    update_variable_v2,
    delete_variable_v2,
    list_topics_handler,
    create_topic_handler,
    delete_topic_handler,
    get_list_of_deployment_v2,
    get_deployment_v2,
    delete_deployment_v2,
    get_key_value_cluster_v2,
    list_key_value_cluster_v2,
    create_key_value_cluster_v2,
    get_key_value_cluster_limit_config_v2,
    update_key_value_cluster_v2,
    delete_key_value_cluster_v2,
    get_list_integrated_app_key_value_cluster_v2,
    get_no_sql_cluster_v2,
    update_no_sql_cluster_v2,
    create_no_sql_cluster_v2,
    delete_no_sql_cluster_v2,
    start_no_sql_cluster_v2,
    stop_no_sql_cluster_v2,
    get_no_sql_access_tunnel_v2,
    get_resources_limits,
    get_sql_cluster_v2,
    update_sql_cluster_v2,
    create_sql_cluster_v2,
    delete_sql_cluster_v2,
    start_sql_cluster_v2,
    stop_sql_cluster_v2,
    get_sql_app_list_v2,
    get_no_sql_app_list_v2,
    get_notification_subscriber_list_v3,
    delete_subscription_app_notification_v3,
    get_app_debug_info_v4,
    update_app_debug_mode_v4,
    get_app_status_progress_v4,
    create_app_v5,
]
