# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service (6.2.0)

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

    deletion_status: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_deletion_status(self, value: bool) -> ModelUserDeletionStatusResponse:
        self.deletion_status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deletion_status"):
            result["deletionStatus"] = bool(self.deletion_status)
        elif include_empty:
            result["deletionStatus"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, deletion_status: bool, **kwargs) -> ModelUserDeletionStatusResponse:
        instance = cls()
        instance.deletion_status = deletion_status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserDeletionStatusResponse:
        instance = cls()
        if not dict_:
            return instance
        if "deletionStatus" in dict_ and dict_["deletionStatus"] is not None:
            instance.deletion_status = bool(dict_["deletionStatus"])
        elif include_empty:
            instance.deletion_status = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserDeletionStatusResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserDeletionStatusResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserDeletionStatusResponse,
        List[ModelUserDeletionStatusResponse],
        Dict[Any, ModelUserDeletionStatusResponse],
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
            "deletionStatus": "deletion_status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deletionStatus": True,
        }

    # endregion static methods
