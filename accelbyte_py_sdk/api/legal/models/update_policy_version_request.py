# justice-legal-service (1.14.0)

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


class UpdatePolicyVersionRequest(Model):
    """Update policy version request (UpdatePolicyVersionRequest)

    Properties:
        description: (description) REQUIRED str

        display_version: (displayVersion) REQUIRED str

        is_committed: (isCommitted) REQUIRED bool
    """

    # region fields

    description: str                                                                               # REQUIRED
    display_version: str                                                                           # REQUIRED
    is_committed: bool                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> UpdatePolicyVersionRequest:
        self.description = value
        return self

    def with_display_version(self, value: str) -> UpdatePolicyVersionRequest:
        self.display_version = value
        return self

    def with_is_committed(self, value: bool) -> UpdatePolicyVersionRequest:
        self.is_committed = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "display_version"):
            result["displayVersion"] = str(self.display_version)
        elif include_empty:
            result["displayVersion"] = str()
        if hasattr(self, "is_committed"):
            result["isCommitted"] = bool(self.is_committed)
        elif include_empty:
            result["isCommitted"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        display_version: str,
        is_committed: bool,
    ) -> UpdatePolicyVersionRequest:
        instance = cls()
        instance.description = description
        instance.display_version = display_version
        instance.is_committed = is_committed
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdatePolicyVersionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "displayVersion" in dict_ and dict_["displayVersion"] is not None:
            instance.display_version = str(dict_["displayVersion"])
        elif include_empty:
            instance.display_version = str()
        if "isCommitted" in dict_ and dict_["isCommitted"] is not None:
            instance.is_committed = bool(dict_["isCommitted"])
        elif include_empty:
            instance.is_committed = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "description": "description",
            "displayVersion": "display_version",
            "isCommitted": "is_committed",
        }

    # endregion static methods