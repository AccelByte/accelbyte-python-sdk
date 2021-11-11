# justice-basic-service (1.26.0)

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


class ADTOObjectForEqu8UserBanStatus(Model):
    """A DTO object for equ8 user ban status (A DTO object for equ8 user ban status)

    Properties:
        expires: (expires) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    expires: str                                                                                   # OPTIONAL
    user_id: str                                                                                   # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_expires(self, value: str) -> ADTOObjectForEqu8UserBanStatus:
        self.expires = value
        return self

    def with_user_id(self, value: str) -> ADTOObjectForEqu8UserBanStatus:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "expires"):
            result["expires"] = str(self.expires)
        elif include_empty:
            result["expires"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        expires: Optional[str] = None,
        user_id: Optional[str] = None,
    ) -> ADTOObjectForEqu8UserBanStatus:
        instance = cls()
        if expires is not None:
            instance.expires = expires
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ADTOObjectForEqu8UserBanStatus:
        instance = cls()
        if not dict_:
            return instance
        if "expires" in dict_ and dict_["expires"] is not None:
            instance.expires = str(dict_["expires"])
        elif include_empty:
            instance.expires = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "expires": "expires",
            "userId": "user_id",
        }

    # endregion static methods
