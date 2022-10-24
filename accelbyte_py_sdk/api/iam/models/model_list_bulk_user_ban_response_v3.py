# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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

from ..models.model_failed_ban_unban_user_v3 import ModelFailedBanUnbanUserV3
from ..models.model_user_ban_response_v3 import ModelUserBanResponseV3


class ModelListBulkUserBanResponseV3(Model):
    """Model list bulk user ban response V3 (model.ListBulkUserBanResponseV3)

    Properties:
        failed_bans: (failedBans) REQUIRED List[ModelFailedBanUnbanUserV3]

        success_bans: (successBans) REQUIRED List[ModelUserBanResponseV3]
    """

    # region fields

    failed_bans: List[ModelFailedBanUnbanUserV3]  # REQUIRED
    success_bans: List[ModelUserBanResponseV3]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_failed_bans(
        self, value: List[ModelFailedBanUnbanUserV3]
    ) -> ModelListBulkUserBanResponseV3:
        self.failed_bans = value
        return self

    def with_success_bans(
        self, value: List[ModelUserBanResponseV3]
    ) -> ModelListBulkUserBanResponseV3:
        self.success_bans = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "failed_bans"):
            result["failedBans"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.failed_bans
            ]
        elif include_empty:
            result["failedBans"] = []
        if hasattr(self, "success_bans"):
            result["successBans"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.success_bans
            ]
        elif include_empty:
            result["successBans"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        failed_bans: List[ModelFailedBanUnbanUserV3],
        success_bans: List[ModelUserBanResponseV3],
    ) -> ModelListBulkUserBanResponseV3:
        instance = cls()
        instance.failed_bans = failed_bans
        instance.success_bans = success_bans
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelListBulkUserBanResponseV3:
        instance = cls()
        if not dict_:
            return instance
        if "failedBans" in dict_ and dict_["failedBans"] is not None:
            instance.failed_bans = [
                ModelFailedBanUnbanUserV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["failedBans"]
            ]
        elif include_empty:
            instance.failed_bans = []
        if "successBans" in dict_ and dict_["successBans"] is not None:
            instance.success_bans = [
                ModelUserBanResponseV3.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["successBans"]
            ]
        elif include_empty:
            instance.success_bans = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelListBulkUserBanResponseV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelListBulkUserBanResponseV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelListBulkUserBanResponseV3,
        List[ModelListBulkUserBanResponseV3],
        Dict[Any, ModelListBulkUserBanResponseV3],
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
            "failedBans": "failed_bans",
            "successBans": "success_bans",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "failedBans": True,
            "successBans": True,
        }

    # endregion static methods
