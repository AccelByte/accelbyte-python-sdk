# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from .v1 import login
from .v1 import login_async
from .v1 import login_client
from .v1 import login_client_async
from .v1 import login_platform
from .v1 import login_platform_async
from .v1 import login_user
from .v1 import login_user_async
from .v1 import refresh_login
from .v1 import refresh_login_async
from .v1 import logout
from .v1 import logout_async

# TODO: uncomment to replace with .v2, remember to remove .v1
# from .v2 import login
# from .v2 import login_async
# from .v2 import login_client
# from .v2 import login_client_async
# from .v2 import login_platform
# from .v2 import login_platform_async
# from .v2 import login_user
# from .v2 import login_user_async
# from .v2 import refresh_login
# from .v2 import refresh_login_async
# from .v2 import logout
# from .v2 import logout_async

# to be deprecated:

from .v1 import LoginTimerBase
from .v1 import LoginClientTimer
from .v1 import LoginPlatformTimer
from .v1 import LoginUserTimer
from .v1 import RefreshLoginTimer
from .v1 import OnDemandTokenRefresher
from .v1 import set_on_demand_token_refresher

# same:

from .v2 import DEFAULT_AUTO_REFRESH
from .v2 import DEFAULT_REFRESH_RATE
from .v2 import convert_bearer_auth_token_to_oauth_token_dict
from .v2 import parse_access_token
