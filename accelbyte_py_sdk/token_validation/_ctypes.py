from enum import IntFlag
from types import SimpleNamespace
from typing import Protocol, Union


class FetchValidationDataError(Exception):
    pass


class FetchRoleError(FetchValidationDataError):
    pass


class TokenValidationError(Exception):
    pass


class InsufficientPermissionsError(TokenValidationError):
    pass


class TokenRevokedError(TokenValidationError):
    pass


class UserRevokedError(TokenValidationError):
    pass


class PermissionActionFlag(IntFlag):
    CREATE = 0b0001
    READ = 0b0010
    UPDATE = 0b0100
    DELETE = 0b1000


PermissionAction = Union[int, PermissionActionFlag]


class PermissionFieldStruct(Protocol):
    action: PermissionAction
    resource: str


# noinspection PyPropertyDefinition
class PermissionPropertyStruct(Protocol):
    @property
    def action(self) -> PermissionAction:
        ...

    @action.setter
    def action(self, i: PermissionAction) -> None:
        ...

    @property
    def resource(self) -> str:
        ...

    @resource.setter
    def resource(self, s: str) -> None:
        ...


PermissionStruct = Union[PermissionFieldStruct, PermissionPropertyStruct]


# noinspection PyTypeChecker
def create_permission_struct(
    action: PermissionAction, resource: str
) -> PermissionStruct:
    return SimpleNamespace(action=action, resource=resource)
