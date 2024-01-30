# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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


class ModelsChannelTopicSummaryResponse(Model):
    """Models channel topic summary response (models.ChannelTopicSummaryResponse)

    Properties:
        total_channel: (totalChannel) REQUIRED int

        total_shard: (totalShard) REQUIRED int
    """

    # region fields

    total_channel: int  # REQUIRED
    total_shard: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_total_channel(self, value: int) -> ModelsChannelTopicSummaryResponse:
        self.total_channel = value
        return self

    def with_total_shard(self, value: int) -> ModelsChannelTopicSummaryResponse:
        self.total_shard = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "total_channel"):
            result["totalChannel"] = int(self.total_channel)
        elif include_empty:
            result["totalChannel"] = 0
        if hasattr(self, "total_shard"):
            result["totalShard"] = int(self.total_shard)
        elif include_empty:
            result["totalShard"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, total_channel: int, total_shard: int, **kwargs
    ) -> ModelsChannelTopicSummaryResponse:
        instance = cls()
        instance.total_channel = total_channel
        instance.total_shard = total_shard
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsChannelTopicSummaryResponse:
        instance = cls()
        if not dict_:
            return instance
        if "totalChannel" in dict_ and dict_["totalChannel"] is not None:
            instance.total_channel = int(dict_["totalChannel"])
        elif include_empty:
            instance.total_channel = 0
        if "totalShard" in dict_ and dict_["totalShard"] is not None:
            instance.total_shard = int(dict_["totalShard"])
        elif include_empty:
            instance.total_shard = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsChannelTopicSummaryResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsChannelTopicSummaryResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsChannelTopicSummaryResponse,
        List[ModelsChannelTopicSummaryResponse],
        Dict[Any, ModelsChannelTopicSummaryResponse],
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
            "totalChannel": "total_channel",
            "totalShard": "total_shard",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "totalChannel": True,
            "totalShard": True,
        }

    # endregion static methods
