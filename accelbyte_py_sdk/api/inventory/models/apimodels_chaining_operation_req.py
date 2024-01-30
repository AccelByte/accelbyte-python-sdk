# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service

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

from ..models.apimodels_operation import ApimodelsOperation


class ApimodelsChainingOperationReq(Model):
    """Apimodels chaining operation req (apimodels.ChainingOperationReq)

    Properties:
        message: (message) REQUIRED str

        operations: (operations) REQUIRED List[ApimodelsOperation]

        request_id: (requestId) OPTIONAL str
    """

    # region fields

    message: str  # REQUIRED
    operations: List[ApimodelsOperation]  # REQUIRED
    request_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_message(self, value: str) -> ApimodelsChainingOperationReq:
        self.message = value
        return self

    def with_operations(
        self, value: List[ApimodelsOperation]
    ) -> ApimodelsChainingOperationReq:
        self.operations = value
        return self

    def with_request_id(self, value: str) -> ApimodelsChainingOperationReq:
        self.request_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        if hasattr(self, "operations"):
            result["operations"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.operations
            ]
        elif include_empty:
            result["operations"] = []
        if hasattr(self, "request_id"):
            result["requestId"] = str(self.request_id)
        elif include_empty:
            result["requestId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        message: str,
        operations: List[ApimodelsOperation],
        request_id: Optional[str] = None,
        **kwargs,
    ) -> ApimodelsChainingOperationReq:
        instance = cls()
        instance.message = message
        instance.operations = operations
        if request_id is not None:
            instance.request_id = request_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsChainingOperationReq:
        instance = cls()
        if not dict_:
            return instance
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "operations" in dict_ and dict_["operations"] is not None:
            instance.operations = [
                ApimodelsOperation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["operations"]
            ]
        elif include_empty:
            instance.operations = []
        if "requestId" in dict_ and dict_["requestId"] is not None:
            instance.request_id = str(dict_["requestId"])
        elif include_empty:
            instance.request_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsChainingOperationReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsChainingOperationReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsChainingOperationReq,
        List[ApimodelsChainingOperationReq],
        Dict[Any, ApimodelsChainingOperationReq],
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
            "message": "message",
            "operations": "operations",
            "requestId": "request_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "message": True,
            "operations": True,
            "requestId": False,
        }

    # endregion static methods
