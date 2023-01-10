from types import SimpleNamespace
from typing import Protocol, Union


class PermissionFieldStruct(Protocol):
    action: int
    resource: str


# noinspection PyPropertyDefinition
class PermissionPropertyStruct(Protocol):
    @property
    def action(self) -> int:
        ...

    @action.setter
    def action(self, i: int) -> None:
        ...

    @property
    def resource(self) -> str:
        ...

    @resource.setter
    def resource(self, s: str) -> None:
        ...


PermissionStruct = Union[PermissionFieldStruct, PermissionPropertyStruct]


# noinspection PyTypeChecker
def create_permission_struct(action: int, resource: str) -> PermissionStruct:
    return SimpleNamespace(action=action, resource=resource)
