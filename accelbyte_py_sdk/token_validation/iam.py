from typing import Optional, Union

import accelbyte_py_sdk.api.iam as iam_service
import accelbyte_py_sdk.services.auth as auth_service
from accelbyte_py_sdk import AccelByteSDK

from ._ctypes import PermissionAction
from ._ctypes import TokenValidationError


class IAMTokenValidator:
    def __init__(
        self,
        sdk: AccelByteSDK,
        token_refresh_interval: Optional[Union[int, float]] = None,
    ) -> None:
        self.sdk = sdk

        if token_refresh_interval is not None:
            auth_service.LoginClientTimer(
                token_refresh_interval,
                repeats=-1,
                autostart=True,
                repeat_on_exception=True,
                sdk=sdk,
            )

    def validate_token(
        self,
        token: str,
        resource: Optional[str] = None,
        action: Optional[PermissionAction] = None,
        namespace: Optional[str] = None,
        **kwargs,
    ) -> Optional[Exception]:
        result, error = iam_service.verify_token_v3(token=token, sdk=self.sdk)
        if error:
            return TokenValidationError(error)

        return None
