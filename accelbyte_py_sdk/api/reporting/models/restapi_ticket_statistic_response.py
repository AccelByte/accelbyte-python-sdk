# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Reporting Service (0.1.23)

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


class RestapiTicketStatisticResponse(Model):
    """Restapi ticket statistic response (restapi.ticketStatisticResponse)

    Properties:
        moderated_count: (moderatedCount) REQUIRED int

        open_count: (openCount) REQUIRED int

        total_count: (totalCount) REQUIRED int
    """

    # region fields

    moderated_count: int  # REQUIRED
    open_count: int  # REQUIRED
    total_count: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_moderated_count(self, value: int) -> RestapiTicketStatisticResponse:
        self.moderated_count = value
        return self

    def with_open_count(self, value: int) -> RestapiTicketStatisticResponse:
        self.open_count = value
        return self

    def with_total_count(self, value: int) -> RestapiTicketStatisticResponse:
        self.total_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "moderated_count"):
            result["moderatedCount"] = int(self.moderated_count)
        elif include_empty:
            result["moderatedCount"] = 0
        if hasattr(self, "open_count"):
            result["openCount"] = int(self.open_count)
        elif include_empty:
            result["openCount"] = 0
        if hasattr(self, "total_count"):
            result["totalCount"] = int(self.total_count)
        elif include_empty:
            result["totalCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        moderated_count: int,
        open_count: int,
        total_count: int,
    ) -> RestapiTicketStatisticResponse:
        instance = cls()
        instance.moderated_count = moderated_count
        instance.open_count = open_count
        instance.total_count = total_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiTicketStatisticResponse:
        instance = cls()
        if not dict_:
            return instance
        if "moderatedCount" in dict_ and dict_["moderatedCount"] is not None:
            instance.moderated_count = int(dict_["moderatedCount"])
        elif include_empty:
            instance.moderated_count = 0
        if "openCount" in dict_ and dict_["openCount"] is not None:
            instance.open_count = int(dict_["openCount"])
        elif include_empty:
            instance.open_count = 0
        if "totalCount" in dict_ and dict_["totalCount"] is not None:
            instance.total_count = int(dict_["totalCount"])
        elif include_empty:
            instance.total_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiTicketStatisticResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiTicketStatisticResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiTicketStatisticResponse,
        List[RestapiTicketStatisticResponse],
        Dict[Any, RestapiTicketStatisticResponse],
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
            "moderatedCount": "moderated_count",
            "openCount": "open_count",
            "totalCount": "total_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "moderatedCount": True,
            "openCount": True,
            "totalCount": True,
        }

    # endregion static methods
