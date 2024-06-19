# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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


class ApiPatchNamespaceConfigRequest(Model):
    """Api patch namespace config request (api.PatchNamespaceConfigRequest)

    Properties:
        extra_platforms: (extraPlatforms) OPTIONAL List[str]

        platform_group: (platformGroup) OPTIONAL Dict[str, List[str]]
    """

    # region fields

    extra_platforms: List[str]  # OPTIONAL
    platform_group: Dict[str, List[str]]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_extra_platforms(self, value: List[str]) -> ApiPatchNamespaceConfigRequest:
        self.extra_platforms = value
        return self

    def with_platform_group(
        self, value: Dict[str, List[str]]
    ) -> ApiPatchNamespaceConfigRequest:
        self.platform_group = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "extra_platforms"):
            result["extraPlatforms"] = [str(i0) for i0 in self.extra_platforms]
        elif include_empty:
            result["extraPlatforms"] = []
        if hasattr(self, "platform_group"):
            result["platformGroup"] = {
                str(k0): [str(i1) for i1 in v0]
                for k0, v0 in self.platform_group.items()
            }
        elif include_empty:
            result["platformGroup"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        extra_platforms: Optional[List[str]] = None,
        platform_group: Optional[Dict[str, List[str]]] = None,
        **kwargs,
    ) -> ApiPatchNamespaceConfigRequest:
        instance = cls()
        if extra_platforms is not None:
            instance.extra_platforms = extra_platforms
        if platform_group is not None:
            instance.platform_group = platform_group
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiPatchNamespaceConfigRequest:
        instance = cls()
        if not dict_:
            return instance
        if "extraPlatforms" in dict_ and dict_["extraPlatforms"] is not None:
            instance.extra_platforms = [str(i0) for i0 in dict_["extraPlatforms"]]
        elif include_empty:
            instance.extra_platforms = []
        if "platformGroup" in dict_ and dict_["platformGroup"] is not None:
            instance.platform_group = {
                str(k0): [str(i1) for i1 in v0]
                for k0, v0 in dict_["platformGroup"].items()
            }
        elif include_empty:
            instance.platform_group = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiPatchNamespaceConfigRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiPatchNamespaceConfigRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiPatchNamespaceConfigRequest,
        List[ApiPatchNamespaceConfigRequest],
        Dict[Any, ApiPatchNamespaceConfigRequest],
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
            "extraPlatforms": "extra_platforms",
            "platformGroup": "platform_group",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "extraPlatforms": False,
            "platformGroup": False,
        }

    # endregion static methods
