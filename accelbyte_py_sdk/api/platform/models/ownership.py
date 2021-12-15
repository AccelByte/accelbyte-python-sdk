# justice-platform-service (3.39.0)

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


class Ownership(Model):
    """Ownership (Ownership)

    Properties:
        owned: (owned) REQUIRED bool
    """

    # region fields

    owned: bool                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_owned(self, value: bool) -> Ownership:
        self.owned = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "owned"):
            result["owned"] = bool(self.owned)
        elif include_empty:
            result["owned"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        owned: bool,
    ) -> Ownership:
        instance = cls()
        instance.owned = owned
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Ownership:
        instance = cls()
        if not dict_:
            return instance
        if "owned" in dict_ and dict_["owned"] is not None:
            instance.owned = bool(dict_["owned"])
        elif include_empty:
            instance.owned = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "owned": "owned",
        }

    # endregion static methods
