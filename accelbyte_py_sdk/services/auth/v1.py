# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from ._login import login
from ._login import login_async
from ._login import login_client
from ._login import login_client_async
from ._login import login_platform
from ._login import login_platform_async
from ._login import login_user
from ._login import login_user_async
from ._login import logout
from ._login import logout_async
from ._login import refresh_login
from ._login import refresh_login_async

from ._login_const import DEFAULT_AUTO_REFRESH
from ._login_const import DEFAULT_REFRESH_RATE

from ._jwt import parse_access_token

from ._utils import convert_bearer_auth_token_to_oauth_token_dict

from ._login import LoginTimerBase
from ._login import LoginClientTimer
from ._login import LoginPlatformTimer
from ._login import LoginUserTimer
from ._login import RefreshLoginTimer
from ._login import OnDemandTokenRefresher
from ._login import set_on_demand_token_refresher

__all__ = [
    # login
    "login",
    "login_async",
    "login_client",
    "login_client_async",
    "login_platform",
    "login_platform_async",
    "login_user",
    "login_user_async",
    "refresh_login",
    "refresh_login_async",
    "logout",
    "logout_async",
    # const
    "DEFAULT_AUTO_REFRESH",
    "DEFAULT_REFRESH_RATE",
    # jwt
    "parse_access_token",
    # utils
    "convert_bearer_auth_token_to_oauth_token_dict",
    # background
    "LoginTimerBase",
    "LoginClientTimer",
    "LoginPlatformTimer",
    "LoginUserTimer",
    "RefreshLoginTimer",
    # on-demand
    "OnDemandTokenRefresher",
    "set_on_demand_token_refresher",
]
