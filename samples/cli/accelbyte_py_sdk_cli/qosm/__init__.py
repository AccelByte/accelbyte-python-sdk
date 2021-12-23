# Justice QoS Manager Service ()

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-init.j2

from ._delete_server import delete_server
from ._set_server_alias import set_server_alias
from ._list_server import list_server
from ._heartbeat import heartbeat


commands = [
    delete_server,
    set_server_alias,
    list_server,
    heartbeat,
]
