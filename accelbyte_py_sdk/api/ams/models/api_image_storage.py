# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiImageStorage(Model):
    """Api image storage (api.ImageStorage)

    Properties:
        current_marked_for_deletion_bytes: (currentMarkedForDeletionBytes) REQUIRED int

        current_usage_bytes: (currentUsageBytes) REQUIRED int

        quota_bytes: (quotaBytes) REQUIRED int
    """

    # region fields

    current_marked_for_deletion_bytes: int  # REQUIRED
    current_usage_bytes: int  # REQUIRED
    quota_bytes: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_current_marked_for_deletion_bytes(self, value: int) -> ApiImageStorage:
        self.current_marked_for_deletion_bytes = value
        return self

    def with_current_usage_bytes(self, value: int) -> ApiImageStorage:
        self.current_usage_bytes = value
        return self

    def with_quota_bytes(self, value: int) -> ApiImageStorage:
        self.quota_bytes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "current_marked_for_deletion_bytes"):
            result["currentMarkedForDeletionBytes"] = int(
                self.current_marked_for_deletion_bytes
            )
        elif include_empty:
            result["currentMarkedForDeletionBytes"] = 0
        if hasattr(self, "current_usage_bytes"):
            result["currentUsageBytes"] = int(self.current_usage_bytes)
        elif include_empty:
            result["currentUsageBytes"] = 0
        if hasattr(self, "quota_bytes"):
            result["quotaBytes"] = int(self.quota_bytes)
        elif include_empty:
            result["quotaBytes"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        current_marked_for_deletion_bytes: int,
        current_usage_bytes: int,
        quota_bytes: int,
        **kwargs,
    ) -> ApiImageStorage:
        instance = cls()
        instance.current_marked_for_deletion_bytes = current_marked_for_deletion_bytes
        instance.current_usage_bytes = current_usage_bytes
        instance.quota_bytes = quota_bytes
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiImageStorage:
        instance = cls()
        if not dict_:
            return instance
        if (
            "currentMarkedForDeletionBytes" in dict_
            and dict_["currentMarkedForDeletionBytes"] is not None
        ):
            instance.current_marked_for_deletion_bytes = int(
                dict_["currentMarkedForDeletionBytes"]
            )
        elif include_empty:
            instance.current_marked_for_deletion_bytes = 0
        if "currentUsageBytes" in dict_ and dict_["currentUsageBytes"] is not None:
            instance.current_usage_bytes = int(dict_["currentUsageBytes"])
        elif include_empty:
            instance.current_usage_bytes = 0
        if "quotaBytes" in dict_ and dict_["quotaBytes"] is not None:
            instance.quota_bytes = int(dict_["quotaBytes"])
        elif include_empty:
            instance.quota_bytes = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiImageStorage]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiImageStorage]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiImageStorage, List[ApiImageStorage], Dict[Any, ApiImageStorage]]:
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
            "currentMarkedForDeletionBytes": "current_marked_for_deletion_bytes",
            "currentUsageBytes": "current_usage_bytes",
            "quotaBytes": "quota_bytes",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currentMarkedForDeletionBytes": True,
            "currentUsageBytes": True,
            "quotaBytes": True,
        }

    # endregion static methods
