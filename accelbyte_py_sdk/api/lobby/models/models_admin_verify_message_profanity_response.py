# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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


class ModelsAdminVerifyMessageProfanityResponse(Model):
    """Models admin verify message profanity response (models.AdminVerifyMessageProfanityResponse)

    Properties:
        filtered_message: (filteredMessage) REQUIRED str

        has_profanity: (hasProfanity) REQUIRED bool
    """

    # region fields

    filtered_message: str  # REQUIRED
    has_profanity: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_filtered_message(
        self, value: str
    ) -> ModelsAdminVerifyMessageProfanityResponse:
        self.filtered_message = value
        return self

    def with_has_profanity(
        self, value: bool
    ) -> ModelsAdminVerifyMessageProfanityResponse:
        self.has_profanity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "filtered_message"):
            result["filteredMessage"] = str(self.filtered_message)
        elif include_empty:
            result["filteredMessage"] = ""
        if hasattr(self, "has_profanity"):
            result["hasProfanity"] = bool(self.has_profanity)
        elif include_empty:
            result["hasProfanity"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        filtered_message: str,
        has_profanity: bool,
    ) -> ModelsAdminVerifyMessageProfanityResponse:
        instance = cls()
        instance.filtered_message = filtered_message
        instance.has_profanity = has_profanity
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAdminVerifyMessageProfanityResponse:
        instance = cls()
        if not dict_:
            return instance
        if "filteredMessage" in dict_ and dict_["filteredMessage"] is not None:
            instance.filtered_message = str(dict_["filteredMessage"])
        elif include_empty:
            instance.filtered_message = ""
        if "hasProfanity" in dict_ and dict_["hasProfanity"] is not None:
            instance.has_profanity = bool(dict_["hasProfanity"])
        elif include_empty:
            instance.has_profanity = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAdminVerifyMessageProfanityResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAdminVerifyMessageProfanityResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAdminVerifyMessageProfanityResponse,
        List[ModelsAdminVerifyMessageProfanityResponse],
        Dict[Any, ModelsAdminVerifyMessageProfanityResponse],
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
            "filteredMessage": "filtered_message",
            "hasProfanity": "has_profanity",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "filteredMessage": True,
            "hasProfanity": True,
        }

    # endregion static methods
