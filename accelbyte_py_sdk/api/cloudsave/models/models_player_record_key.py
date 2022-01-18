# justice-cloudsave-service (2.1.0)

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


class ModelsPlayerRecordKey(Model):
    """Models player record key (models.PlayerRecordKey)

    Properties:
        key: (key) REQUIRED str

        user_id: (user_id) REQUIRED str
    """

    # region fields

    key: str                                                                                       # REQUIRED
    user_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_key(self, value: str) -> ModelsPlayerRecordKey:
        self.key = value
        return self

    def with_user_id(self, value: str) -> ModelsPlayerRecordKey:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "key"):
            result["key"] = str(self.key)
        elif include_empty:
            result["key"] = str()
        if hasattr(self, "user_id"):
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        key: str,
        user_id: str,
    ) -> ModelsPlayerRecordKey:
        instance = cls()
        instance.key = key
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsPlayerRecordKey:
        instance = cls()
        if not dict_:
            return instance
        if "key" in dict_ and dict_["key"] is not None:
            instance.key = str(dict_["key"])
        elif include_empty:
            instance.key = str()
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "key": "key",
            "user_id": "user_id",
        }

    # endregion static methods
