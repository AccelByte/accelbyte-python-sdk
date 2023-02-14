# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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


class ApiBackFillRejectRequest(Model):
    """Api back fill reject request (api.backFillRejectRequest)

    Properties:
        proposal_id: (proposalId) REQUIRED str

        stop: (stop) REQUIRED bool
    """

    # region fields

    proposal_id: str  # REQUIRED
    stop: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_proposal_id(self, value: str) -> ApiBackFillRejectRequest:
        self.proposal_id = value
        return self

    def with_stop(self, value: bool) -> ApiBackFillRejectRequest:
        self.stop = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "proposal_id"):
            result["proposalId"] = str(self.proposal_id)
        elif include_empty:
            result["proposalId"] = ""
        if hasattr(self, "stop"):
            result["stop"] = bool(self.stop)
        elif include_empty:
            result["stop"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        proposal_id: str,
        stop: bool,
    ) -> ApiBackFillRejectRequest:
        instance = cls()
        instance.proposal_id = proposal_id
        instance.stop = stop
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiBackFillRejectRequest:
        instance = cls()
        if not dict_:
            return instance
        if "proposalId" in dict_ and dict_["proposalId"] is not None:
            instance.proposal_id = str(dict_["proposalId"])
        elif include_empty:
            instance.proposal_id = ""
        if "stop" in dict_ and dict_["stop"] is not None:
            instance.stop = bool(dict_["stop"])
        elif include_empty:
            instance.stop = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiBackFillRejectRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiBackFillRejectRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiBackFillRejectRequest,
        List[ApiBackFillRejectRequest],
        Dict[Any, ApiBackFillRejectRequest],
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
            "proposalId": "proposal_id",
            "stop": "stop",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "proposalId": True,
            "stop": True,
        }

    # endregion static methods
