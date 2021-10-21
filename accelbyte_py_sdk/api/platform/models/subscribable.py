# justice-platform-service (3.34.0)

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


class Subscribable(Model):
    """Subscribable (Subscribable)

    Properties:
        subscribable: (subscribable) REQUIRED bool
    """

    # region fields

    subscribable: bool                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_subscribable(self, value: bool) -> Subscribable:
        self.subscribable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "subscribable") and self.subscribable:
            result["subscribable"] = bool(self.subscribable)
        elif include_empty:
            result["subscribable"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        subscribable: bool,
    ) -> Subscribable:
        instance = cls()
        instance.subscribable = subscribable
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Subscribable:
        instance = cls()
        if not dict_:
            return instance
        if "subscribable" in dict_ and dict_["subscribable"] is not None:
            instance.subscribable = bool(dict_["subscribable"])
        elif include_empty:
            instance.subscribable = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "subscribable": "subscribable",
        }

    # endregion static methods