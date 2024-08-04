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

# all_terminated_servers
from .wrappers import list_terminated_servers
from .wrappers import list_terminated_servers_async

# artifact_upload_process_queue
from .wrappers import delete_active_queue
from .wrappers import delete_active_queue_async
from .wrappers import delete_node_by_id
from .wrappers import delete_node_by_id_async
from .wrappers import delete_queue
from .wrappers import delete_queue_async
from .wrappers import get_active_queue
from .wrappers import get_active_queue_async
from .wrappers import list_all_active_queue
from .wrappers import list_all_active_queue_async
from .wrappers import list_all_queue
from .wrappers import list_all_queue_async
from .wrappers import list_nodes_ip_address
from .wrappers import list_nodes_ip_address_async
from .wrappers import list_queue
from .wrappers import list_queue_async
from .wrappers import report_failed_upload
from .wrappers import report_failed_upload_async
from .wrappers import set_active_queue
from .wrappers import set_active_queue_async

# download_server_artifact
from .wrappers import check_server_artifact
from .wrappers import check_server_artifact_async
from .wrappers import download_server_artifacts
from .wrappers import download_server_artifacts_async

# operations
from .wrappers import public_get_messages
from .wrappers import public_get_messages_async

# terminated_servers
from .wrappers import list_terminated_servers_with_namespace
from .wrappers import list_terminated_servers_with_namespace_async
