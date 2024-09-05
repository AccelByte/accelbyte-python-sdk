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


class CampaignBatchNameInfo(Model):
    """Campaign batch name info (CampaignBatchNameInfo)

    Properties:
        batch_name: (batchName) REQUIRED str

        batch_nos: (batchNos) REQUIRED List[int]
    """

    # region fields

    batch_name: str  # REQUIRED
    batch_nos: List[int]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_batch_name(self, value: str) -> CampaignBatchNameInfo:
        self.batch_name = value
        return self

    def with_batch_nos(self, value: List[int]) -> CampaignBatchNameInfo:
        self.batch_nos = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "batch_name"):
            result["batchName"] = str(self.batch_name)
        elif include_empty:
            result["batchName"] = ""
        if hasattr(self, "batch_nos"):
            result["batchNos"] = [int(i0) for i0 in self.batch_nos]
        elif include_empty:
            result["batchNos"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, batch_name: str, batch_nos: List[int], **kwargs
    ) -> CampaignBatchNameInfo:
        instance = cls()
        instance.batch_name = batch_name
        instance.batch_nos = batch_nos
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CampaignBatchNameInfo:
        instance = cls()
        if not dict_:
            return instance
        if "batchName" in dict_ and dict_["batchName"] is not None:
            instance.batch_name = str(dict_["batchName"])
        elif include_empty:
            instance.batch_name = ""
        if "batchNos" in dict_ and dict_["batchNos"] is not None:
            instance.batch_nos = [int(i0) for i0 in dict_["batchNos"]]
        elif include_empty:
            instance.batch_nos = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CampaignBatchNameInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CampaignBatchNameInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        CampaignBatchNameInfo,
        List[CampaignBatchNameInfo],
        Dict[Any, CampaignBatchNameInfo],
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
            "batchName": "batch_name",
            "batchNos": "batch_nos",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "batchName": True,
            "batchNos": True,
        }

    # endregion static methods
