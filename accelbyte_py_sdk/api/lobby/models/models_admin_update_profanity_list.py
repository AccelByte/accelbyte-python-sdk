# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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


class ModelsAdminUpdateProfanityList(Model):
    """Models admin update profanity list (models.AdminUpdateProfanityList)

    Properties:
        is_enabled: (isEnabled) REQUIRED bool

        is_mandatory: (isMandatory) REQUIRED bool

        new_name: (newName) REQUIRED str
    """

    # region fields

    is_enabled: bool  # REQUIRED
    is_mandatory: bool  # REQUIRED
    new_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_is_enabled(self, value: bool) -> ModelsAdminUpdateProfanityList:
        self.is_enabled = value
        return self

    def with_is_mandatory(self, value: bool) -> ModelsAdminUpdateProfanityList:
        self.is_mandatory = value
        return self

    def with_new_name(self, value: str) -> ModelsAdminUpdateProfanityList:
        self.new_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_enabled"):
            result["isEnabled"] = bool(self.is_enabled)
        elif include_empty:
            result["isEnabled"] = False
        if hasattr(self, "is_mandatory"):
            result["isMandatory"] = bool(self.is_mandatory)
        elif include_empty:
            result["isMandatory"] = False
        if hasattr(self, "new_name"):
            result["newName"] = str(self.new_name)
        elif include_empty:
            result["newName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        is_enabled: bool,
        is_mandatory: bool,
        new_name: str,
    ) -> ModelsAdminUpdateProfanityList:
        instance = cls()
        instance.is_enabled = is_enabled
        instance.is_mandatory = is_mandatory
        instance.new_name = new_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAdminUpdateProfanityList:
        instance = cls()
        if not dict_:
            return instance
        if "isEnabled" in dict_ and dict_["isEnabled"] is not None:
            instance.is_enabled = bool(dict_["isEnabled"])
        elif include_empty:
            instance.is_enabled = False
        if "isMandatory" in dict_ and dict_["isMandatory"] is not None:
            instance.is_mandatory = bool(dict_["isMandatory"])
        elif include_empty:
            instance.is_mandatory = False
        if "newName" in dict_ and dict_["newName"] is not None:
            instance.new_name = str(dict_["newName"])
        elif include_empty:
            instance.new_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAdminUpdateProfanityList]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAdminUpdateProfanityList]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAdminUpdateProfanityList,
        List[ModelsAdminUpdateProfanityList],
        Dict[Any, ModelsAdminUpdateProfanityList],
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
            "isEnabled": "is_enabled",
            "isMandatory": "is_mandatory",
            "newName": "new_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "isEnabled": True,
            "isMandatory": True,
            "newName": True,
        }

    # endregion static methods
