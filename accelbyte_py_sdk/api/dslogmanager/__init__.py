# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Ds Log Manager Service."""

__version__ = "3.7.4"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# admin
from .wrappers import get_server_logs
from .wrappers import get_server_logs_async

# all_terminated_servers
from .wrappers import batch_download_server_logs
from .wrappers import batch_download_server_logs_async
from .wrappers import list_all_terminated_servers
from .wrappers import list_all_terminated_servers_async
from .wrappers import list_metadata_servers
from .wrappers import list_metadata_servers_async

# dslogmanager_operations
from .wrappers import public_get_messages
from .wrappers import public_get_messages_async

# terminated_servers
from .wrappers import check_server_logs
from .wrappers import check_server_logs_async
from .wrappers import download_server_logs
from .wrappers import download_server_logs_async
from .wrappers import list_terminated_servers
from .wrappers import list_terminated_servers_async
