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


class ModelsSetPlayerSessionAttributeRequest(Model):
    """Models set player session attribute request (models.SetPlayerSessionAttributeRequest)

    Properties:
        attributes: (attributes) REQUIRED Dict[str, str]
    """

    # region fields

    attributes: Dict[str, str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attributes(
        self, value: Dict[str, str]
    ) -> ModelsSetPlayerSessionAttributeRequest:
        self.attributes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attributes"):
            result["attributes"] = {
                str(k0): str(v0) for k0, v0 in self.attributes.items()
            }
        elif include_empty:
            result["attributes"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attributes: Dict[str, str],
    ) -> ModelsSetPlayerSessionAttributeRequest:
        instance = cls()
        instance.attributes = attributes
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsSetPlayerSessionAttributeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): str(v0) for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsSetPlayerSessionAttributeRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsSetPlayerSessionAttributeRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsSetPlayerSessionAttributeRequest,
        List[ModelsSetPlayerSessionAttributeRequest],
        Dict[Any, ModelsSetPlayerSessionAttributeRequest],
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
            "attributes": "attributes",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attributes": True,
        }

    # endregion static methods
