# justice-legal-service (1.16.0)

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


class RetrieveUserEligibilitiesIndirectResponse(Model):
    """Retrieve user eligibilities indirect response (RetrieveUserEligibilitiesIndirectResponse)

    Properties:
        is_comply: (isComply) REQUIRED bool
    """

    # region fields

    is_comply: bool                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_is_comply(self, value: bool) -> RetrieveUserEligibilitiesIndirectResponse:
        self.is_comply = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_comply"):
            result["isComply"] = bool(self.is_comply)
        elif include_empty:
            result["isComply"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        is_comply: bool,
    ) -> RetrieveUserEligibilitiesIndirectResponse:
        instance = cls()
        instance.is_comply = is_comply
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RetrieveUserEligibilitiesIndirectResponse:
        instance = cls()
        if not dict_:
            return instance
        if "isComply" in dict_ and dict_["isComply"] is not None:
            instance.is_comply = bool(dict_["isComply"])
        elif include_empty:
            instance.is_comply = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "isComply": "is_comply",
        }

    # endregion static methods
