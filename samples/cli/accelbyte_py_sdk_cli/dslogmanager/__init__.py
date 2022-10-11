# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-ds-log-manager-service (2.4.3)

from ._list_terminated_servers import list_terminated_servers
from ._download_server_logs import download_server_logs
from ._check_server_logs import check_server_logs
from ._batch_download_server_logs import batch_download_server_logs
from ._list_all_terminated_servers import list_all_terminated_servers
from ._public_get_messages import public_get_messages


commands = [
    list_terminated_servers,
    download_server_logs,
    check_server_logs,
    batch_download_server_logs,
    list_all_terminated_servers,
    public_get_messages,
]
