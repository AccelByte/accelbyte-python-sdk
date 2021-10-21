# Auto-generated at 2021-10-21T08:52:30.764597+08:00
# from: Justice platform Service (3.34.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class GameServerConfig(Model):
    """A DTO object for ECommerce related game server config. (GameServerConfig)

    Properties:
        private_key: (privateKey) OPTIONAL str

        notify_url: (notifyUrl) OPTIONAL str

        dry_run: (dryRun) OPTIONAL bool
    """

    # region fields

    private_key: str                                                                               # OPTIONAL
    notify_url: str                                                                                # OPTIONAL
    dry_run: bool                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_private_key(self, value: str) -> GameServerConfig:
        self.private_key = value
        return self

    def with_notify_url(self, value: str) -> GameServerConfig:
        self.notify_url = value
        return self

    def with_dry_run(self, value: bool) -> GameServerConfig:
        self.dry_run = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "private_key") and self.private_key:
            result["privateKey"] = str(self.private_key)
        elif include_empty:
            result["privateKey"] = str()
        if hasattr(self, "notify_url") and self.notify_url:
            result["notifyUrl"] = str(self.notify_url)
        elif include_empty:
            result["notifyUrl"] = str()
        if hasattr(self, "dry_run") and self.dry_run:
            result["dryRun"] = bool(self.dry_run)
        elif include_empty:
            result["dryRun"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        private_key: Optional[str] = None,
        notify_url: Optional[str] = None,
        dry_run: Optional[bool] = None,
    ) -> GameServerConfig:
        instance = cls()
        if private_key is not None:
            instance.private_key = private_key
        if notify_url is not None:
            instance.notify_url = notify_url
        if dry_run is not None:
            instance.dry_run = dry_run
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GameServerConfig:
        instance = cls()
        if not dict_:
            return instance
        if "privateKey" in dict_ and dict_["privateKey"] is not None:
            instance.private_key = str(dict_["privateKey"])
        elif include_empty:
            instance.private_key = str()
        if "notifyUrl" in dict_ and dict_["notifyUrl"] is not None:
            instance.notify_url = str(dict_["notifyUrl"])
        elif include_empty:
            instance.notify_url = str()
        if "dryRun" in dict_ and dict_["dryRun"] is not None:
            instance.dry_run = bool(dict_["dryRun"])
        elif include_empty:
            instance.dry_run = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "privateKey": "private_key",
            "notifyUrl": "notify_url",
            "dryRun": "dry_run",
        }

    # endregion static methods
