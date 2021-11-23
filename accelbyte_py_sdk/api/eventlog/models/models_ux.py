# justice-event-log-service (1.18.3)

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


class ModelsUX(Model):
    """Models UX (models.UX)

    Properties:
        description: (Description) REQUIRED str

        ux: (UX) REQUIRED int
    """

    # region fields

    description: str                                                                               # REQUIRED
    ux: int                                                                                        # REQUIRED

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ModelsUX:
        self.description = value
        return self

    def with_ux(self, value: int) -> ModelsUX:
        self.ux = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["Description"] = str(self.description)
        elif include_empty:
            result["Description"] = str()
        if hasattr(self, "ux"):
            result["UX"] = int(self.ux)
        elif include_empty:
            result["UX"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        ux: int,
    ) -> ModelsUX:
        instance = cls()
        instance.description = description
        instance.ux = ux
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUX:
        instance = cls()
        if not dict_:
            return instance
        if "Description" in dict_ and dict_["Description"] is not None:
            instance.description = str(dict_["Description"])
        elif include_empty:
            instance.description = str()
        if "UX" in dict_ and dict_["UX"] is not None:
            instance.ux = int(dict_["UX"])
        elif include_empty:
            instance.ux = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Description": "description",
            "UX": "ux",
        }

    # endregion static methods