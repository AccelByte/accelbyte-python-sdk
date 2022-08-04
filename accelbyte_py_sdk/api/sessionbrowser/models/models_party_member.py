# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Browser Service ()

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


class ModelsPartyMember(Model):
    """Models party member (models.PartyMember)

    Properties:
        extra_attributes: (extra_attributes) REQUIRED Dict[str, Any]

        user_id: (user_id) REQUIRED str
    """

    # region fields

    extra_attributes: Dict[str, Any]  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_extra_attributes(self, value: Dict[str, Any]) -> ModelsPartyMember:
        self.extra_attributes = value
        return self

    def with_user_id(self, value: str) -> ModelsPartyMember:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "extra_attributes"):
            result["extra_attributes"] = {
                str(k0): v0 for k0, v0 in self.extra_attributes.items()
            }
        elif include_empty:
            result["extra_attributes"] = {}
        if hasattr(self, "user_id"):
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        extra_attributes: Dict[str, Any],
        user_id: str,
    ) -> ModelsPartyMember:
        instance = cls()
        instance.extra_attributes = extra_attributes
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPartyMember:
        instance = cls()
        if not dict_:
            return instance
        if "extra_attributes" in dict_ and dict_["extra_attributes"] is not None:
            instance.extra_attributes = {
                str(k0): v0 for k0, v0 in dict_["extra_attributes"].items()
            }
        elif include_empty:
            instance.extra_attributes = {}
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPartyMember]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPartyMember]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPartyMember, List[ModelsPartyMember], Dict[Any, ModelsPartyMember]
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
            "extra_attributes": "extra_attributes",
            "user_id": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "extra_attributes": True,
            "user_id": True,
        }

    # endregion static methods
