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
