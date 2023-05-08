# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-gdpr-service (1.23.0)

from ._admin_get_list_deletion_data_request import admin_get_list_deletion_data_request
from ._get_admin_email_configuration import get_admin_email_configuration
from ._update_admin_email_configuration import update_admin_email_configuration
from ._save_admin_email_configuration import save_admin_email_configuration
from ._delete_admin_email_configuration import delete_admin_email_configuration
from ._admin_get_list_personal_data_request import admin_get_list_personal_data_request
from ._admin_get_user_account_deletion_request import (
    admin_get_user_account_deletion_request,
)
from ._admin_submit_user_account_deletion_request import (
    admin_submit_user_account_deletion_request,
)
from ._admin_cancel_user_account_deletion_request import (
    admin_cancel_user_account_deletion_request,
)
from ._admin_get_user_personal_data_requests import (
    admin_get_user_personal_data_requests,
)
from ._admin_request_data_retrieval import admin_request_data_retrieval
from ._admin_cancel_user_personal_data_request import (
    admin_cancel_user_personal_data_request,
)
from ._admin_generate_personal_data_url import admin_generate_personal_data_url
from ._public_submit_user_account_deletion_request import (
    public_submit_user_account_deletion_request,
)
from ._public_cancel_user_account_deletion_request import (
    public_cancel_user_account_deletion_request,
)
from ._public_get_user_account_deletion_status import (
    public_get_user_account_deletion_status,
)
from ._public_get_user_personal_data_requests import (
    public_get_user_personal_data_requests,
)
from ._public_request_data_retrieval import public_request_data_retrieval
from ._public_cancel_user_personal_data_request import (
    public_cancel_user_personal_data_request,
)
from ._public_generate_personal_data_url import public_generate_personal_data_url


commands = [
    admin_get_list_deletion_data_request,
    get_admin_email_configuration,
    update_admin_email_configuration,
    save_admin_email_configuration,
    delete_admin_email_configuration,
    admin_get_list_personal_data_request,
    admin_get_user_account_deletion_request,
    admin_submit_user_account_deletion_request,
    admin_cancel_user_account_deletion_request,
    admin_get_user_personal_data_requests,
    admin_request_data_retrieval,
    admin_cancel_user_personal_data_request,
    admin_generate_personal_data_url,
    public_submit_user_account_deletion_request,
    public_cancel_user_account_deletion_request,
    public_get_user_account_deletion_status,
    public_get_user_personal_data_requests,
    public_request_data_retrieval,
    public_cancel_user_personal_data_request,
    public_generate_personal_data_url,
]
