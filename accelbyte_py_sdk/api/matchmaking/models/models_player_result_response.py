# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.17.2)

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

from ..models.models_result_attribute_response import ModelsResultAttributeResponse


class ModelsPlayerResultResponse(Model):
    """Models player result response (models.PlayerResultResponse)

    Properties:
        current_score: (current_score) REQUIRED List[ModelsResultAttributeResponse]

        user_id: (user_id) REQUIRED str
    """

    # region fields

    current_score: List[ModelsResultAttributeResponse]  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_current_score(
        self, value: List[ModelsResultAttributeResponse]
    ) -> ModelsPlayerResultResponse:
        self.current_score = value
        return self

    def with_user_id(self, value: str) -> ModelsPlayerResultResponse:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "current_score"):
            result["current_score"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.current_score
            ]
        elif include_empty:
            result["current_score"] = []
        if hasattr(self, "user_id"):
            result["user_id"] = str(self.user_id)
        elif include_empty:
            result["user_id"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        current_score: List[ModelsResultAttributeResponse],
        user_id: str,
    ) -> ModelsPlayerResultResponse:
        instance = cls()
        instance.current_score = current_score
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPlayerResultResponse:
        instance = cls()
        if not dict_:
            return instance
        if "current_score" in dict_ and dict_["current_score"] is not None:
            instance.current_score = [
                ModelsResultAttributeResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["current_score"]
            ]
        elif include_empty:
            instance.current_score = []
        if "user_id" in dict_ and dict_["user_id"] is not None:
            instance.user_id = str(dict_["user_id"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPlayerResultResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPlayerResultResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsPlayerResultResponse,
        List[ModelsPlayerResultResponse],
        Dict[Any, ModelsPlayerResultResponse],
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
            "current_score": "current_score",
            "user_id": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "current_score": True,
            "user_id": True,
        }

    # endregion static methods
