# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (6.2.0)

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


class ModelsDefaultProvider(Model):
    """Models default provider (models.DefaultProvider)

    Properties:
        provider_name: (provider_name) REQUIRED str
    """

    # region fields

    provider_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_provider_name(self, value: str) -> ModelsDefaultProvider:
        self.provider_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "provider_name"):
            result["provider_name"] = str(self.provider_name)
        elif include_empty:
            result["provider_name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        provider_name: str,
    ) -> ModelsDefaultProvider:
        instance = cls()
        instance.provider_name = provider_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDefaultProvider:
        instance = cls()
        if not dict_:
            return instance
        if "provider_name" in dict_ and dict_["provider_name"] is not None:
            instance.provider_name = str(dict_["provider_name"])
        elif include_empty:
            instance.provider_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDefaultProvider]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDefaultProvider]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDefaultProvider,
        List[ModelsDefaultProvider],
        Dict[Any, ModelsDefaultProvider],
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
            "provider_name": "provider_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "provider_name": True,
        }

    # endregion static methods
