# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from ._login_user import login_user_internal as login
from ._login_user import login_user_async_internal as login_async
from ._login_client import login_client_internal as login_client
from ._login_client import login_client_async_internal as login_client_async
from ._login_platform import login_platform_internal as login_platform
from ._login_platform import login_platform_async_internal as login_platform_async
from ._login_user import login_user_internal as login_user
from ._login_user import login_user_async_internal as login_user_async
from ._login_refresh import login_refresh_internal as refresh_login
from ._login_refresh import login_refresh_async_internal as refresh_login_async
from ._login_refresh import try_refresh_login_internal as try_refresh_login
from ._login_refresh import try_refresh_login_async_internal as try_refresh_login_async
from ._logout import logout_internal as logout
from ._logout import logout_async_internal as logout_async

from ._login_const import DEFAULT_AUTO_REFRESH
from ._login_const import DEFAULT_REFRESH_RATE

from ._jwt import parse_access_token

from ._utils import convert_bearer_auth_token_to_oauth_token_dict

from ._login_background import (
    BackgroundOptions,
    enable_background_refresh,
    disable_background_refresh,
)
from ._login_on_demand import (
    OnDemandOptions,
    enable_on_demand_refresh,
    disable_on_demand_refresh,
)

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
    "try_refresh_login",
    "try_refresh_login_async",
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
    "BackgroundOptions",
    "enable_background_refresh",
    "disable_background_refresh",
    # on-demand
    "OnDemandOptions",
    "enable_on_demand_refresh",
    "disable_on_demand_refresh",
]
