# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Seasonpass Service

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


class ItemReference(Model):
    """A DTO object for item references. (ItemReference)

    Properties:
        module: (module) OPTIONAL str

        references: (references) OPTIONAL List[Dict[str, Any]]
    """

    # region fields

    module: str  # OPTIONAL
    references: List[Dict[str, Any]]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_module(self, value: str) -> ItemReference:
        self.module = value
        return self

    def with_references(self, value: List[Dict[str, Any]]) -> ItemReference:
        self.references = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "module"):
            result["module"] = str(self.module)
        elif include_empty:
            result["module"] = ""
        if hasattr(self, "references"):
            result["references"] = [
                {str(k1): v1 for k1, v1 in i0.items()} for i0 in self.references
            ]
        elif include_empty:
            result["references"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        module: Optional[str] = None,
        references: Optional[List[Dict[str, Any]]] = None,
        **kwargs,
    ) -> ItemReference:
        instance = cls()
        if module is not None:
            instance.module = module
        if references is not None:
            instance.references = references
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ItemReference:
        instance = cls()
        if not dict_:
            return instance
        if "module" in dict_ and dict_["module"] is not None:
            instance.module = str(dict_["module"])
        elif include_empty:
            instance.module = ""
        if "references" in dict_ and dict_["references"] is not None:
            instance.references = [
                {str(k1): v1 for k1, v1 in i0.items()} for i0 in dict_["references"]
            ]
        elif include_empty:
            instance.references = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ItemReference]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ItemReference]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ItemReference, List[ItemReference], Dict[Any, ItemReference]]:
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
            "module": "module",
            "references": "references",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "module": False,
            "references": False,
        }

    # endregion static methods
