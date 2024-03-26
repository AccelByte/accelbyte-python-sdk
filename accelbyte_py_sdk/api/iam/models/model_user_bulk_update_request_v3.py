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


class ModelUserBulkUpdateRequestV3(Model):
    """Model user bulk update request V3 (model.UserBulkUpdateRequestV3)

    Properties:
        skip_login_queue: (skipLoginQueue) REQUIRED bool
    """

    # region fields

    skip_login_queue: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_skip_login_queue(self, value: bool) -> ModelUserBulkUpdateRequestV3:
        self.skip_login_queue = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "skip_login_queue"):
            result["skipLoginQueue"] = bool(self.skip_login_queue)
        elif include_empty:
            result["skipLoginQueue"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, skip_login_queue: bool, **kwargs) -> ModelUserBulkUpdateRequestV3:
        instance = cls()
        instance.skip_login_queue = skip_login_queue
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserBulkUpdateRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "skipLoginQueue" in dict_ and dict_["skipLoginQueue"] is not None:
            instance.skip_login_queue = bool(dict_["skipLoginQueue"])
        elif include_empty:
            instance.skip_login_queue = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserBulkUpdateRequestV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserBulkUpdateRequestV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserBulkUpdateRequestV3,
        List[ModelUserBulkUpdateRequestV3],
        Dict[Any, ModelUserBulkUpdateRequestV3],
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
            "skipLoginQueue": "skip_login_queue",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "skipLoginQueue": True,
        }

    # endregion static methods
