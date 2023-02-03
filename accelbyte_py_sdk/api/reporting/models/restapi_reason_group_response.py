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

from ..models.restapi_admin_reason_response import RestapiAdminReasonResponse


class RestapiReasonGroupResponse(Model):
    """Restapi reason group response (restapi.reasonGroupResponse)

    Properties:
        id_: (id) REQUIRED str

        title: (title) REQUIRED str

        reasons: (reasons) OPTIONAL List[RestapiAdminReasonResponse]
    """

    # region fields

    id_: str  # REQUIRED
    title: str  # REQUIRED
    reasons: List[RestapiAdminReasonResponse]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> RestapiReasonGroupResponse:
        self.id_ = value
        return self

    def with_title(self, value: str) -> RestapiReasonGroupResponse:
        self.title = value
        return self

    def with_reasons(
        self, value: List[RestapiAdminReasonResponse]
    ) -> RestapiReasonGroupResponse:
        self.reasons = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "reasons"):
            result["reasons"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.reasons
            ]
        elif include_empty:
            result["reasons"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        title: str,
        reasons: Optional[List[RestapiAdminReasonResponse]] = None,
    ) -> RestapiReasonGroupResponse:
        instance = cls()
        instance.id_ = id_
        instance.title = title
        if reasons is not None:
            instance.reasons = reasons
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiReasonGroupResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "reasons" in dict_ and dict_["reasons"] is not None:
            instance.reasons = [
                RestapiAdminReasonResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["reasons"]
            ]
        elif include_empty:
            instance.reasons = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiReasonGroupResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiReasonGroupResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiReasonGroupResponse,
        List[RestapiReasonGroupResponse],
        Dict[Any, RestapiReasonGroupResponse],
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
            "id": "id_",
            "title": "title",
            "reasons": "reasons",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "title": True,
            "reasons": False,
        }

    # endregion static methods
