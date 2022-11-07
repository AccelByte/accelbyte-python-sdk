# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

"""The top-level package for the AccelByte Python SDK."""

__product__ = "AccelBytePythonSDK"
__version__ = "0.27.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

from .core import AccelByteSDK

from .core import is_initialized
from .core import initialize
from .core import reset
