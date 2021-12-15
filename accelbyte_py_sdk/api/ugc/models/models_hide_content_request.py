# justice-ugc-service (1.10.0)

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


class ModelsHideContentRequest(Model):
    """Models hide content request (models.HideContentRequest)

    Properties:
        is_hidden: (isHidden) REQUIRED bool
    """

    # region fields

    is_hidden: bool                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_is_hidden(self, value: bool) -> ModelsHideContentRequest:
        self.is_hidden = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_hidden"):
            result["isHidden"] = bool(self.is_hidden)
        elif include_empty:
            result["isHidden"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        is_hidden: bool,
    ) -> ModelsHideContentRequest:
        instance = cls()
        instance.is_hidden = is_hidden
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsHideContentRequest:
        instance = cls()
        if not dict_:
            return instance
        if "isHidden" in dict_ and dict_["isHidden"] is not None:
            instance.is_hidden = bool(dict_["isHidden"])
        elif include_empty:
            instance.is_hidden = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "isHidden": "is_hidden",
        }

    # endregion static methods
