# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.24.1)

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


class CreatePolicyVersionRequest(Model):
    """Create policy version request (CreatePolicyVersionRequest)

    Properties:
        description: (description) OPTIONAL str

        display_version: (displayVersion) OPTIONAL str

        is_committed: (isCommitted) OPTIONAL bool
    """

    # region fields

    description: str  # OPTIONAL
    display_version: str  # OPTIONAL
    is_committed: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> CreatePolicyVersionRequest:
        self.description = value
        return self

    def with_display_version(self, value: str) -> CreatePolicyVersionRequest:
        self.display_version = value
        return self

    def with_is_committed(self, value: bool) -> CreatePolicyVersionRequest:
        self.is_committed = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "display_version"):
            result["displayVersion"] = str(self.display_version)
        elif include_empty:
            result["displayVersion"] = ""
        if hasattr(self, "is_committed"):
            result["isCommitted"] = bool(self.is_committed)
        elif include_empty:
            result["isCommitted"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: Optional[str] = None,
        display_version: Optional[str] = None,
        is_committed: Optional[bool] = None,
    ) -> CreatePolicyVersionRequest:
        instance = cls()
        if description is not None:
            instance.description = description
        if display_version is not None:
            instance.display_version = display_version
        if is_committed is not None:
            instance.is_committed = is_committed
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CreatePolicyVersionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "displayVersion" in dict_ and dict_["displayVersion"] is not None:
            instance.display_version = str(dict_["displayVersion"])
        elif include_empty:
            instance.display_version = ""
        if "isCommitted" in dict_ and dict_["isCommitted"] is not None:
            instance.is_committed = bool(dict_["isCommitted"])
        elif include_empty:
            instance.is_committed = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CreatePolicyVersionRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CreatePolicyVersionRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        CreatePolicyVersionRequest,
        List[CreatePolicyVersionRequest],
        Dict[Any, CreatePolicyVersionRequest],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "description": "description",
            "displayVersion": "display_version",
            "isCommitted": "is_committed",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": False,
            "displayVersion": False,
            "isCommitted": False,
        }

    # endregion static methods
