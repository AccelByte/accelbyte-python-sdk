# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class Localization(Model):
    """Localization (Localization)

    Properties:
        title: (title) REQUIRED str

        description: (description) OPTIONAL str

        local_ext: (localExt) OPTIONAL Dict[str, Any]

        long_description: (longDescription) OPTIONAL str
    """

    # region fields

    title: str  # REQUIRED
    description: str  # OPTIONAL
    local_ext: Dict[str, Any]  # OPTIONAL
    long_description: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_title(self, value: str) -> Localization:
        self.title = value
        return self

    def with_description(self, value: str) -> Localization:
        self.description = value
        return self

    def with_local_ext(self, value: Dict[str, Any]) -> Localization:
        self.local_ext = value
        return self

    def with_long_description(self, value: str) -> Localization:
        self.long_description = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "local_ext"):
            result["localExt"] = {str(k0): v0 for k0, v0 in self.local_ext.items()}
        elif include_empty:
            result["localExt"] = {}
        if hasattr(self, "long_description"):
            result["longDescription"] = str(self.long_description)
        elif include_empty:
            result["longDescription"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        title: str,
        description: Optional[str] = None,
        local_ext: Optional[Dict[str, Any]] = None,
        long_description: Optional[str] = None,
    ) -> Localization:
        instance = cls()
        instance.title = title
        if description is not None:
            instance.description = description
        if local_ext is not None:
            instance.local_ext = local_ext
        if long_description is not None:
            instance.long_description = long_description
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Localization:
        instance = cls()
        if not dict_:
            return instance
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "localExt" in dict_ and dict_["localExt"] is not None:
            instance.local_ext = {str(k0): v0 for k0, v0 in dict_["localExt"].items()}
        elif include_empty:
            instance.local_ext = {}
        if "longDescription" in dict_ and dict_["longDescription"] is not None:
            instance.long_description = str(dict_["longDescription"])
        elif include_empty:
            instance.long_description = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Localization]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Localization]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Localization, List[Localization], Dict[Any, Localization]]:
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
            "title": "title",
            "description": "description",
            "localExt": "local_ext",
            "longDescription": "long_description",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "title": True,
            "description": False,
            "localExt": False,
            "longDescription": False,
        }

    # endregion static methods
