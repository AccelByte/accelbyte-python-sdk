# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# Justice QoS Manager Service (1.18.2)

from ._update_server_config import update_server_config
from ._delete_server import delete_server
from ._set_server_alias import set_server_alias
from ._list_server_per_namespace import list_server_per_namespace
from ._list_server import list_server
from ._heartbeat import heartbeat


commands = [
    update_server_config,
    delete_server,
    set_server_alias,
    list_server_per_namespace,
    list_server,
    heartbeat,
]
