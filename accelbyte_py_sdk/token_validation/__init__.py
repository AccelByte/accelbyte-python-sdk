from typing import Optional, Protocol

from ._ctypes import FetchValidationDataError
from ._ctypes import FetchRoleError
from ._ctypes import TokenValidationError
from ._ctypes import InsufficientPermissionsError
from ._ctypes import TokenRevokedError
from ._ctypes import UserRevokedError

from ._ctypes import PermissionAction
from ._ctypes import PermissionStruct
from ._ctypes import create_permission_struct

from ._utils import replace_resource
from ._utils import validate_permission


class TokenValidatorProtocol(Protocol):
    def validate_token(
        self,
        token: str,
        resource: Optional[str] = None,
        action: Optional[PermissionAction] = None,
        namespace: Optional[str] = None,
        **kwargs,
    ) -> Optional[Exception]:
        ...


__all__ = [
    "TokenValidatorProtocol",
]
