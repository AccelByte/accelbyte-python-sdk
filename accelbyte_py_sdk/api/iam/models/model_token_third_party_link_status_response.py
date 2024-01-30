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


class ModelTokenThirdPartyLinkStatusResponse(Model):
    """Model token third party link status response (model.TokenThirdPartyLinkStatusResponse)

    Properties:
        linked: (linked) REQUIRED bool

        platform_token: (platformToken) OPTIONAL str

        sandbox_id: (sandboxId) OPTIONAL str
    """

    # region fields

    linked: bool  # REQUIRED
    platform_token: str  # OPTIONAL
    sandbox_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_linked(self, value: bool) -> ModelTokenThirdPartyLinkStatusResponse:
        self.linked = value
        return self

    def with_platform_token(self, value: str) -> ModelTokenThirdPartyLinkStatusResponse:
        self.platform_token = value
        return self

    def with_sandbox_id(self, value: str) -> ModelTokenThirdPartyLinkStatusResponse:
        self.sandbox_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "linked"):
            result["linked"] = bool(self.linked)
        elif include_empty:
            result["linked"] = False
        if hasattr(self, "platform_token"):
            result["platformToken"] = str(self.platform_token)
        elif include_empty:
            result["platformToken"] = ""
        if hasattr(self, "sandbox_id"):
            result["sandboxId"] = str(self.sandbox_id)
        elif include_empty:
            result["sandboxId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        linked: bool,
        platform_token: Optional[str] = None,
        sandbox_id: Optional[str] = None,
        **kwargs,
    ) -> ModelTokenThirdPartyLinkStatusResponse:
        instance = cls()
        instance.linked = linked
        if platform_token is not None:
            instance.platform_token = platform_token
        if sandbox_id is not None:
            instance.sandbox_id = sandbox_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelTokenThirdPartyLinkStatusResponse:
        instance = cls()
        if not dict_:
            return instance
        if "linked" in dict_ and dict_["linked"] is not None:
            instance.linked = bool(dict_["linked"])
        elif include_empty:
            instance.linked = False
        if "platformToken" in dict_ and dict_["platformToken"] is not None:
            instance.platform_token = str(dict_["platformToken"])
        elif include_empty:
            instance.platform_token = ""
        if "sandboxId" in dict_ and dict_["sandboxId"] is not None:
            instance.sandbox_id = str(dict_["sandboxId"])
        elif include_empty:
            instance.sandbox_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelTokenThirdPartyLinkStatusResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelTokenThirdPartyLinkStatusResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelTokenThirdPartyLinkStatusResponse,
        List[ModelTokenThirdPartyLinkStatusResponse],
        Dict[Any, ModelTokenThirdPartyLinkStatusResponse],
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
            "linked": "linked",
            "platformToken": "platform_token",
            "sandboxId": "sandbox_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "linked": True,
            "platformToken": False,
            "sandboxId": False,
        }

    # endregion static methods
