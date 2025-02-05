# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-login-queue-service

from ._admin_get_configuration import admin_get_configuration
from ._admin_update_configuration import admin_update_configuration
from ._admin_get_status import admin_get_status
from ._refresh_ticket import refresh_ticket
from ._cancel_ticket import cancel_ticket


commands = [
    admin_get_configuration,
    admin_update_configuration,
    admin_get_status,
    refresh_ticket,
    cancel_ticket,
]
