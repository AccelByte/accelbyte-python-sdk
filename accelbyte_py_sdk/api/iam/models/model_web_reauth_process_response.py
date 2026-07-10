# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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

from ..models.model_link_request_response import ModelLinkRequestResponse


class ModelWebReauthProcessResponse(Model):
    """Model web reauth process response (model.WebReauthProcessResponse)

    Properties:
        operation: (operation) REQUIRED str

        status: (status) REQUIRED str

        link_response: (linkResponse) OPTIONAL ModelLinkRequestResponse
    """

    # region fields

    operation: str  # REQUIRED
    status: str  # REQUIRED
    link_response: ModelLinkRequestResponse  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_operation(self, value: str) -> ModelWebReauthProcessResponse:
        self.operation = value
        return self

    def with_status(self, value: str) -> ModelWebReauthProcessResponse:
        self.status = value
        return self

    def with_link_response(
        self, value: ModelLinkRequestResponse
    ) -> ModelWebReauthProcessResponse:
        self.link_response = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "operation"):
            result["operation"] = str(self.operation)
        elif include_empty:
            result["operation"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "link_response"):
            result["linkResponse"] = self.link_response.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["linkResponse"] = ModelLinkRequestResponse()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        operation: str,
        status: str,
        link_response: Optional[ModelLinkRequestResponse] = None,
        **kwargs,
    ) -> ModelWebReauthProcessResponse:
        instance = cls()
        instance.operation = operation
        instance.status = status
        if link_response is not None:
            instance.link_response = link_response
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelWebReauthProcessResponse:
        instance = cls()
        if not dict_:
            return instance
        if "operation" in dict_ and dict_["operation"] is not None:
            instance.operation = str(dict_["operation"])
        elif include_empty:
            instance.operation = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "linkResponse" in dict_ and dict_["linkResponse"] is not None:
            instance.link_response = ModelLinkRequestResponse.create_from_dict(
                dict_["linkResponse"], include_empty=include_empty
            )
        elif include_empty:
            instance.link_response = ModelLinkRequestResponse()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelWebReauthProcessResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelWebReauthProcessResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelWebReauthProcessResponse,
        List[ModelWebReauthProcessResponse],
        Dict[Any, ModelWebReauthProcessResponse],
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
            "operation": "operation",
            "status": "status",
            "linkResponse": "link_response",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "operation": True,
            "status": True,
            "linkResponse": False,
        }

    # endregion static methods
