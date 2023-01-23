from typing import Optional

from ._ctypes import InsufficientPermissionsError
from ._ctypes import PermissionAction


class MockTokenValidator:
    def __init__(self, value: bool = False):
        self.value = value

    def validate_token(
        self,
        token: str,
        resource: Optional[str] = None,
        action: Optional[PermissionAction] = None,
        namespace: Optional[str] = None,
        **kwargs,
    ) -> Optional[Exception]:
        return None if self.value else InsufficientPermissionsError()
