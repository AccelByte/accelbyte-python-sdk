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

from ..models.model_user_unban_create_request_v3 import ModelUserUnbanCreateRequestV3


class ModelBulkUnbanCreateRequestV3(Model):
    """Model bulk unban create request V3 (model.BulkUnbanCreateRequestV3)

    Properties:
        bans: (bans) OPTIONAL List[ModelUserUnbanCreateRequestV3]
    """

    # region fields

    bans: List[ModelUserUnbanCreateRequestV3]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_bans(
        self, value: List[ModelUserUnbanCreateRequestV3]
    ) -> ModelBulkUnbanCreateRequestV3:
        self.bans = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "bans"):
            result["bans"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.bans
            ]
        elif include_empty:
            result["bans"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, bans: Optional[List[ModelUserUnbanCreateRequestV3]] = None, **kwargs
    ) -> ModelBulkUnbanCreateRequestV3:
        instance = cls()
        if bans is not None:
            instance.bans = bans
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelBulkUnbanCreateRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "bans" in dict_ and dict_["bans"] is not None:
            instance.bans = [
                ModelUserUnbanCreateRequestV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["bans"]
            ]
        elif include_empty:
            instance.bans = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelBulkUnbanCreateRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelBulkUnbanCreateRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelBulkUnbanCreateRequestV3,
        List[ModelBulkUnbanCreateRequestV3],
        Dict[Any, ModelBulkUnbanCreateRequestV3],
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
            "bans": "bans",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "bans": False,
        }

    # endregion static methods
