# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ApimodelsUpdatePasswordRequest(Model):
    """Apimodels update password request (apimodels.UpdatePasswordRequest)

    Properties:
        new_password: (newPassword) REQUIRED str
    """

    # region fields

    new_password: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_new_password(self, value: str) -> ApimodelsUpdatePasswordRequest:
        self.new_password = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "new_password"):
            result["newPassword"] = str(self.new_password)
        elif include_empty:
            result["newPassword"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, new_password: str, **kwargs) -> ApimodelsUpdatePasswordRequest:
        instance = cls()
        instance.new_password = new_password
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsUpdatePasswordRequest:
        instance = cls()
        if not dict_:
            return instance
        if "newPassword" in dict_ and dict_["newPassword"] is not None:
            instance.new_password = str(dict_["newPassword"])
        elif include_empty:
            instance.new_password = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsUpdatePasswordRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsUpdatePasswordRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsUpdatePasswordRequest,
        List[ApimodelsUpdatePasswordRequest],
        Dict[Any, ApimodelsUpdatePasswordRequest],
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
            "newPassword": "new_password",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "newPassword": True,
        }

    # endregion static methods
