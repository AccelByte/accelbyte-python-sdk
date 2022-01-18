# justice-group-service (2.10.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ModelsJoinGroupResponseV1(Model):
    """Models join group response V1 (models.JoinGroupResponseV1)

    Properties:
        group_id: (groupId) REQUIRED str

        status: (status) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    group_id: str                                                                                  # REQUIRED
    status: str                                                                                    # REQUIRED
    user_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_group_id(self, value: str) -> ModelsJoinGroupResponseV1:
        self.group_id = value
        return self

    def with_status(self, value: str) -> ModelsJoinGroupResponseV1:
        self.status = value
        return self

    def with_user_id(self, value: str) -> ModelsJoinGroupResponseV1:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group_id"):
            result["groupId"] = str(self.group_id)
        elif include_empty:
            result["groupId"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
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
        group_id: str,
        status: str,
        user_id: str,
    ) -> ModelsJoinGroupResponseV1:
        instance = cls()
        instance.group_id = group_id
        instance.status = status
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsJoinGroupResponseV1:
        instance = cls()
        if not dict_:
            return instance
        if "groupId" in dict_ and dict_["groupId"] is not None:
            instance.group_id = str(dict_["groupId"])
        elif include_empty:
            instance.group_id = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "groupId": "group_id",
            "status": "status",
            "userId": "user_id",
        }

    # endregion static methods
