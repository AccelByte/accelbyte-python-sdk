# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from logging import Logger, getLogger

from ...core import NoHttpBackoffPolicy, NoHttpRetryPolicy

MODULE_NAME = "accelbyte_py_sdk"

LOGIN_TYPE_CLIENT: str = "client"
LOGIN_TYPE_PLATFORM: str = "platform"
LOGIN_TYPE_USER: str = "user"
LOGIN_TYPE_REFRESHABLE: str = "refreshable"

DEFAULT_MAX_RETRY: int = 2
DEFAULT_REFRESH_RATE: float = 0.8

DEFAULT_SCOPE: str = "commerce account social publishing analytics"

DEFAULT_AUTO_REFRESH: bool = False

DEFAULT_TIMER_INTERVAL: int = 60
DEFAULT_TIMER_REFRESH_RATE: float = DEFAULT_REFRESH_RATE
DEFAULT_TIMER_REPEATS: int = -1
DEFAULT_TIMER_REPEAT_ON_EXCEPTION: bool = True
DEFAULT_TIMER_AUTOSTART: bool = False

AUTH_SERVICE_LOGGER: Logger = getLogger(f"{MODULE_NAME}.services.auth")

REFRESH_KWARGS = {
    "retry_policy": NoHttpRetryPolicy(),
    "backoff_policy": NoHttpBackoffPolicy(),
}
