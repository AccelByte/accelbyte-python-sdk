# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class ModelUserPasswordUpdateV3Request(Model):
    """Model user password update V3 request (model.UserPasswordUpdateV3Request)

    Properties:
        language_tag: (languageTag) REQUIRED str

        new_password: (newPassword) REQUIRED str

        old_password: (oldPassword) REQUIRED str
    """

    # region fields

    language_tag: str  # REQUIRED
    new_password: str  # REQUIRED
    old_password: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_language_tag(self, value: str) -> ModelUserPasswordUpdateV3Request:
        self.language_tag = value
        return self

    def with_new_password(self, value: str) -> ModelUserPasswordUpdateV3Request:
        self.new_password = value
        return self

    def with_old_password(self, value: str) -> ModelUserPasswordUpdateV3Request:
        self.old_password = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "language_tag"):
            result["languageTag"] = str(self.language_tag)
        elif include_empty:
            result["languageTag"] = ""
        if hasattr(self, "new_password"):
            result["newPassword"] = str(self.new_password)
        elif include_empty:
            result["newPassword"] = ""
        if hasattr(self, "old_password"):
            result["oldPassword"] = str(self.old_password)
        elif include_empty:
            result["oldPassword"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        language_tag: str,
        new_password: str,
        old_password: str,
    ) -> ModelUserPasswordUpdateV3Request:
        instance = cls()
        instance.language_tag = language_tag
        instance.new_password = new_password
        instance.old_password = old_password
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserPasswordUpdateV3Request:
        instance = cls()
        if not dict_:
            return instance
        if "languageTag" in dict_ and dict_["languageTag"] is not None:
            instance.language_tag = str(dict_["languageTag"])
        elif include_empty:
            instance.language_tag = ""
        if "newPassword" in dict_ and dict_["newPassword"] is not None:
            instance.new_password = str(dict_["newPassword"])
        elif include_empty:
            instance.new_password = ""
        if "oldPassword" in dict_ and dict_["oldPassword"] is not None:
            instance.old_password = str(dict_["oldPassword"])
        elif include_empty:
            instance.old_password = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserPasswordUpdateV3Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserPasswordUpdateV3Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserPasswordUpdateV3Request,
        List[ModelUserPasswordUpdateV3Request],
        Dict[Any, ModelUserPasswordUpdateV3Request],
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
            "languageTag": "language_tag",
            "newPassword": "new_password",
            "oldPassword": "old_password",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "languageTag": True,
            "newPassword": True,
            "oldPassword": True,
        }

    # endregion static methods
