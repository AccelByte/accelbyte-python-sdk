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


class ApiArtifactUsageResponse(Model):
    """Api artifact usage response (api.ArtifactUsageResponse)

    Properties:
        quota_bytes: (quotaBytes) REQUIRED int

        remaining_bytes: (remainingBytes) REQUIRED int

        used_bytes: (usedBytes) REQUIRED int
    """

    # region fields

    quota_bytes: int  # REQUIRED
    remaining_bytes: int  # REQUIRED
    used_bytes: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_quota_bytes(self, value: int) -> ApiArtifactUsageResponse:
        self.quota_bytes = value
        return self

    def with_remaining_bytes(self, value: int) -> ApiArtifactUsageResponse:
        self.remaining_bytes = value
        return self

    def with_used_bytes(self, value: int) -> ApiArtifactUsageResponse:
        self.used_bytes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "quota_bytes"):
            result["quotaBytes"] = int(self.quota_bytes)
        elif include_empty:
            result["quotaBytes"] = 0
        if hasattr(self, "remaining_bytes"):
            result["remainingBytes"] = int(self.remaining_bytes)
        elif include_empty:
            result["remainingBytes"] = 0
        if hasattr(self, "used_bytes"):
            result["usedBytes"] = int(self.used_bytes)
        elif include_empty:
            result["usedBytes"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, quota_bytes: int, remaining_bytes: int, used_bytes: int, **kwargs
    ) -> ApiArtifactUsageResponse:
        instance = cls()
        instance.quota_bytes = quota_bytes
        instance.remaining_bytes = remaining_bytes
        instance.used_bytes = used_bytes
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiArtifactUsageResponse:
        instance = cls()
        if not dict_:
            return instance
        if "quotaBytes" in dict_ and dict_["quotaBytes"] is not None:
            instance.quota_bytes = int(dict_["quotaBytes"])
        elif include_empty:
            instance.quota_bytes = 0
        if "remainingBytes" in dict_ and dict_["remainingBytes"] is not None:
            instance.remaining_bytes = int(dict_["remainingBytes"])
        elif include_empty:
            instance.remaining_bytes = 0
        if "usedBytes" in dict_ and dict_["usedBytes"] is not None:
            instance.used_bytes = int(dict_["usedBytes"])
        elif include_empty:
            instance.used_bytes = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiArtifactUsageResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiArtifactUsageResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiArtifactUsageResponse,
        List[ApiArtifactUsageResponse],
        Dict[Any, ApiArtifactUsageResponse],
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
            "quotaBytes": "quota_bytes",
            "remainingBytes": "remaining_bytes",
            "usedBytes": "used_bytes",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "quotaBytes": True,
            "remainingBytes": True,
            "usedBytes": True,
        }

    # endregion static methods
