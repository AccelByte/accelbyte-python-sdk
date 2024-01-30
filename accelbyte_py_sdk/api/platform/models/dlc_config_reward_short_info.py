# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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
from ....core import StrEnum


class DlcTypeEnum(StrEnum):
    EPICGAMES = "EPICGAMES"
    OCULUS = "OCULUS"
    PSN = "PSN"
    STEAM = "STEAM"
    XBOX = "XBOX"


class DLCConfigRewardShortInfo(Model):
    """DLC config reward short info (DLCConfigRewardShortInfo)

    Properties:
        data: (data) OPTIONAL Dict[str, List[str]]

        dlc_type: (dlcType) OPTIONAL Union[str, DlcTypeEnum]
    """

    # region fields

    data: Dict[str, List[str]]  # OPTIONAL
    dlc_type: Union[str, DlcTypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_data(self, value: Dict[str, List[str]]) -> DLCConfigRewardShortInfo:
        self.data = value
        return self

    def with_dlc_type(self, value: Union[str, DlcTypeEnum]) -> DLCConfigRewardShortInfo:
        self.dlc_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = {
                str(k0): [str(i1) for i1 in v0] for k0, v0 in self.data.items()
            }
        elif include_empty:
            result["data"] = {}
        if hasattr(self, "dlc_type"):
            result["dlcType"] = str(self.dlc_type)
        elif include_empty:
            result["dlcType"] = Union[str, DlcTypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: Optional[Dict[str, List[str]]] = None,
        dlc_type: Optional[Union[str, DlcTypeEnum]] = None,
        **kwargs,
    ) -> DLCConfigRewardShortInfo:
        instance = cls()
        if data is not None:
            instance.data = data
        if dlc_type is not None:
            instance.dlc_type = dlc_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DLCConfigRewardShortInfo:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = {
                str(k0): [str(i1) for i1 in v0] for k0, v0 in dict_["data"].items()
            }
        elif include_empty:
            instance.data = {}
        if "dlcType" in dict_ and dict_["dlcType"] is not None:
            instance.dlc_type = str(dict_["dlcType"])
        elif include_empty:
            instance.dlc_type = Union[str, DlcTypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DLCConfigRewardShortInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DLCConfigRewardShortInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DLCConfigRewardShortInfo,
        List[DLCConfigRewardShortInfo],
        Dict[Any, DLCConfigRewardShortInfo],
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
            "data": "data",
            "dlcType": "dlc_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "data": False,
            "dlcType": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "dlcType": ["EPICGAMES", "OCULUS", "PSN", "STEAM", "XBOX"],
        }

    # endregion static methods
