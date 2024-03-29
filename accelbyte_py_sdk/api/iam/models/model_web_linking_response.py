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


class ModelWebLinkingResponse(Model):
    """Model web linking response (model.WebLinkingResponse)

    Properties:
        state: (state) REQUIRED str

        third_party_url: (third_party_url) REQUIRED str
    """

    # region fields

    state: str  # REQUIRED
    third_party_url: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_state(self, value: str) -> ModelWebLinkingResponse:
        self.state = value
        return self

    def with_third_party_url(self, value: str) -> ModelWebLinkingResponse:
        self.third_party_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "state"):
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = ""
        if hasattr(self, "third_party_url"):
            result["third_party_url"] = str(self.third_party_url)
        elif include_empty:
            result["third_party_url"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, state: str, third_party_url: str, **kwargs
    ) -> ModelWebLinkingResponse:
        instance = cls()
        instance.state = state
        instance.third_party_url = third_party_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelWebLinkingResponse:
        instance = cls()
        if not dict_:
            return instance
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = ""
        if "third_party_url" in dict_ and dict_["third_party_url"] is not None:
            instance.third_party_url = str(dict_["third_party_url"])
        elif include_empty:
            instance.third_party_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelWebLinkingResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelWebLinkingResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelWebLinkingResponse,
        List[ModelWebLinkingResponse],
        Dict[Any, ModelWebLinkingResponse],
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
            "state": "state",
            "third_party_url": "third_party_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "state": True,
            "third_party_url": True,
        }

    # endregion static methods
