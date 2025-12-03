# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

"""The top-level package for the AccelByte Python SDK."""

__product__ = "AccelBytePythonSDK"
__version__ = "0.81.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

from .core import AccelByteSDK

from .core import is_initialized
from .core import initialize
from .core import reset


def get_version(
    latest: bool = False,
    full: bool = False,
    **kwargs,
) -> str:
    result = f"{__product__} {__version__}" if full else __version__

    if latest:
        # noinspection PyBroadException
        try:
            import requests

            response = requests.get(url=f"https://pypi.org/pypi/accelbyte-py-sdk/json")
            if response.ok:
                response_json = response.json()
                latest_version = response_json.get("info", {}).get("version")
                if latest_version is not None and __version__ != latest_version:
                    result += f" (latest: {latest_version})"
        except Exception:
            pass  # Best-effort version check: ignore all errors silently.

    return result
