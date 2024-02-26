# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-ds-artifact-manager

from ._list_nodes_ip_address import list_nodes_ip_address
from ._delete_node_by_id import delete_node_by_id
from ._list_queue import list_queue
from ._get_active_queue import get_active_queue
from ._set_active_queue import set_active_queue
from ._delete_active_queue import delete_active_queue
from ._report_failed_upload import report_failed_upload
from ._delete_queue import delete_queue
from ._list_all_active_queue import list_all_active_queue
from ._list_all_queue import list_all_queue
from ._list_terminated_servers_with_namespace import (
    list_terminated_servers_with_namespace,
)
from ._download_server_artifacts import download_server_artifacts
from ._check_server_artifact import check_server_artifact
from ._list_terminated_servers import list_terminated_servers
from ._public_get_messages import public_get_messages


commands = [
    list_nodes_ip_address,
    delete_node_by_id,
    list_queue,
    get_active_queue,
    set_active_queue,
    delete_active_queue,
    report_failed_upload,
    delete_queue,
    list_all_active_queue,
    list_all_queue,
    list_terminated_servers_with_namespace,
    download_server_artifacts,
    check_server_artifact,
    list_terminated_servers,
    public_get_messages,
]
