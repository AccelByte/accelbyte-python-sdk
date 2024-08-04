# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Ds Artifact Manager."""

__version__ = "1.11.5"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from ._all_terminated_servers import list_terminated_servers
from ._all_terminated_servers import list_terminated_servers_async

from ._artifact_upload_process_queue import delete_active_queue
from ._artifact_upload_process_queue import delete_active_queue_async
from ._artifact_upload_process_queue import delete_node_by_id
from ._artifact_upload_process_queue import delete_node_by_id_async
from ._artifact_upload_process_queue import delete_queue
from ._artifact_upload_process_queue import delete_queue_async
from ._artifact_upload_process_queue import get_active_queue
from ._artifact_upload_process_queue import get_active_queue_async
from ._artifact_upload_process_queue import list_all_active_queue
from ._artifact_upload_process_queue import list_all_active_queue_async
from ._artifact_upload_process_queue import list_all_queue
from ._artifact_upload_process_queue import list_all_queue_async
from ._artifact_upload_process_queue import list_nodes_ip_address
from ._artifact_upload_process_queue import list_nodes_ip_address_async
from ._artifact_upload_process_queue import list_queue
from ._artifact_upload_process_queue import list_queue_async
from ._artifact_upload_process_queue import report_failed_upload
from ._artifact_upload_process_queue import report_failed_upload_async
from ._artifact_upload_process_queue import set_active_queue
from ._artifact_upload_process_queue import set_active_queue_async

from ._download_server_artifact import check_server_artifact
from ._download_server_artifact import check_server_artifact_async
from ._download_server_artifact import download_server_artifacts
from ._download_server_artifact import download_server_artifacts_async

from ._operations import public_get_messages
from ._operations import public_get_messages_async

from ._terminated_servers import list_terminated_servers_with_namespace
from ._terminated_servers import list_terminated_servers_with_namespace_async
