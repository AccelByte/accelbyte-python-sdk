from typing import Optional, Protocol

from ._ctypes import (
    PermissionAction,
    PermissionStruct,
    create_permission_struct,
)
from ._utils import replace_resource
from ._validation import (
    validate_action,
    validate_permission,
    validate_resource,
)


class TokenValidatorProtocol(Protocol):
    def validate_token(
        self,
        token: str,
        resource: Optional[str] = None,
        action: Optional[PermissionAction] = None,
        namespace: Optional[str] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> Optional[Exception]:
        ...


__all__ = [
    "PermissionAction",
    "PermissionStruct",
    "TokenValidatorProtocol",
    "create_permission_struct",
    "replace_resource",
    "validate_action",
    "validate_permission",
    "validate_resource",
]
