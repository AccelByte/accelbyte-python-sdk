# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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

from ..models.apimodels_response_delete_bulk_party_sessions import (
    ApimodelsResponseDeleteBulkPartySessions,
)


class ApimodelsDeleteBulkPartySessionsAPIResponse(Model):
    """Apimodels delete bulk party sessions API response (apimodels.DeleteBulkPartySessionsAPIResponse)

    Properties:
        failed: (failed) OPTIONAL List[ApimodelsResponseDeleteBulkPartySessions]

        success: (success) OPTIONAL List[str]
    """

    # region fields

    failed: List[ApimodelsResponseDeleteBulkPartySessions]  # OPTIONAL
    success: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_failed(
        self, value: List[ApimodelsResponseDeleteBulkPartySessions]
    ) -> ApimodelsDeleteBulkPartySessionsAPIResponse:
        self.failed = value
        return self

    def with_success(
        self, value: List[str]
    ) -> ApimodelsDeleteBulkPartySessionsAPIResponse:
        self.success = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "failed"):
            result["failed"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.failed
            ]
        elif include_empty:
            result["failed"] = []
        if hasattr(self, "success"):
            result["success"] = [str(i0) for i0 in self.success]
        elif include_empty:
            result["success"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        failed: Optional[List[ApimodelsResponseDeleteBulkPartySessions]] = None,
        success: Optional[List[str]] = None,
        **kwargs,
    ) -> ApimodelsDeleteBulkPartySessionsAPIResponse:
        instance = cls()
        if failed is not None:
            instance.failed = failed
        if success is not None:
            instance.success = success
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsDeleteBulkPartySessionsAPIResponse:
        instance = cls()
        if not dict_:
            return instance
        if "failed" in dict_ and dict_["failed"] is not None:
            instance.failed = [
                ApimodelsResponseDeleteBulkPartySessions.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["failed"]
            ]
        elif include_empty:
            instance.failed = []
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = [str(i0) for i0 in dict_["success"]]
        elif include_empty:
            instance.success = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsDeleteBulkPartySessionsAPIResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsDeleteBulkPartySessionsAPIResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsDeleteBulkPartySessionsAPIResponse,
        List[ApimodelsDeleteBulkPartySessionsAPIResponse],
        Dict[Any, ApimodelsDeleteBulkPartySessionsAPIResponse],
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
            "failed": "failed",
            "success": "success",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "failed": False,
            "success": False,
        }

    # endregion static methods
