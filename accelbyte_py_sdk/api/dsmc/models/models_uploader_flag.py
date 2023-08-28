# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Dsm Controller Service (6.3.7)

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


class ModelsUploaderFlag(Model):
    """Models uploader flag (models.UploaderFlag)

    Properties:
        name: (name) REQUIRED str

        shorthand: (shorthand) REQUIRED str

        value: (value) REQUIRED str
    """

    # region fields

    name: str  # REQUIRED
    shorthand: str  # REQUIRED
    value: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> ModelsUploaderFlag:
        self.name = value
        return self

    def with_shorthand(self, value: str) -> ModelsUploaderFlag:
        self.shorthand = value
        return self

    def with_value(self, value: str) -> ModelsUploaderFlag:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "shorthand"):
            result["shorthand"] = str(self.shorthand)
        elif include_empty:
            result["shorthand"] = ""
        if hasattr(self, "value"):
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, name: str, shorthand: str, value: str, **kwargs
    ) -> ModelsUploaderFlag:
        instance = cls()
        instance.name = name
        instance.shorthand = shorthand
        instance.value = value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUploaderFlag:
        instance = cls()
        if not dict_:
            return instance
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "shorthand" in dict_ and dict_["shorthand"] is not None:
            instance.shorthand = str(dict_["shorthand"])
        elif include_empty:
            instance.shorthand = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUploaderFlag]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUploaderFlag]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUploaderFlag, List[ModelsUploaderFlag], Dict[Any, ModelsUploaderFlag]
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
            "name": "name",
            "shorthand": "shorthand",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "name": True,
            "shorthand": True,
            "value": True,
        }

    # endregion static methods
