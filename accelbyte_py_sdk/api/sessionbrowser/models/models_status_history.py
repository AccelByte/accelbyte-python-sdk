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


class ModelsStatusHistory(Model):
    """Models status history (models.StatusHistory)

    Properties:
        status: (status) REQUIRED str

        time_stamp: (time_stamp) REQUIRED str
    """

    # region fields

    status: str  # REQUIRED
    time_stamp: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_status(self, value: str) -> ModelsStatusHistory:
        self.status = value
        return self

    def with_time_stamp(self, value: str) -> ModelsStatusHistory:
        self.time_stamp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "time_stamp"):
            result["time_stamp"] = str(self.time_stamp)
        elif include_empty:
            result["time_stamp"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        status: str,
        time_stamp: str,
    ) -> ModelsStatusHistory:
        instance = cls()
        instance.status = status
        instance.time_stamp = time_stamp
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsStatusHistory:
        instance = cls()
        if not dict_:
            return instance
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "time_stamp" in dict_ and dict_["time_stamp"] is not None:
            instance.time_stamp = str(dict_["time_stamp"])
        elif include_empty:
            instance.time_stamp = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsStatusHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsStatusHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsStatusHistory, List[ModelsStatusHistory], Dict[Any, ModelsStatusHistory]
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
            "status": "status",
            "time_stamp": "time_stamp",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "status": True,
            "time_stamp": True,
        }

    # endregion static methods
