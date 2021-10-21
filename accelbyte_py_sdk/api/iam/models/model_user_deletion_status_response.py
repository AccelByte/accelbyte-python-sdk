# justice-iam-service (4.4.1)

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


class ModelUserDeletionStatusResponse(Model):
    """Model user deletion status response (model.UserDeletionStatusResponse)

    Properties:
        deletion_status: (deletionStatus) REQUIRED bool
    """

    # region fields

    deletion_status: bool                                                                          # REQUIRED

    # endregion fields

    # region with_x methods

    def with_deletion_status(self, value: bool) -> ModelUserDeletionStatusResponse:
        self.deletion_status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deletion_status") and self.deletion_status:
            result["deletionStatus"] = bool(self.deletion_status)
        elif include_empty:
            result["deletionStatus"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        deletion_status: bool,
    ) -> ModelUserDeletionStatusResponse:
        instance = cls()
        instance.deletion_status = deletion_status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserDeletionStatusResponse:
        instance = cls()
        if not dict_:
            return instance
        if "deletionStatus" in dict_ and dict_["deletionStatus"] is not None:
            instance.deletion_status = bool(dict_["deletionStatus"])
        elif include_empty:
            instance.deletion_status = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "deletionStatus": "deletion_status",
        }

    # endregion static methods
