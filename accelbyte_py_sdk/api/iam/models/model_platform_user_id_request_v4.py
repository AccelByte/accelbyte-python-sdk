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


class ModelPlatformUserIDRequestV4(Model):
    """Model platform user ID request V4 (model.PlatformUserIDRequestV4)

    Properties:
        platform_user_ids: (platformUserIds) REQUIRED List[str]

        pid_type: (pidType) OPTIONAL str
    """

    # region fields

    platform_user_ids: List[str]  # REQUIRED
    pid_type: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_platform_user_ids(self, value: List[str]) -> ModelPlatformUserIDRequestV4:
        self.platform_user_ids = value
        return self

    def with_pid_type(self, value: str) -> ModelPlatformUserIDRequestV4:
        self.pid_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_user_ids"):
            result["platformUserIds"] = [str(i0) for i0 in self.platform_user_ids]
        elif include_empty:
            result["platformUserIds"] = []
        if hasattr(self, "pid_type"):
            result["pidType"] = str(self.pid_type)
        elif include_empty:
            result["pidType"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, platform_user_ids: List[str], pid_type: Optional[str] = None, **kwargs
    ) -> ModelPlatformUserIDRequestV4:
        instance = cls()
        instance.platform_user_ids = platform_user_ids
        if pid_type is not None:
            instance.pid_type = pid_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPlatformUserIDRequestV4:
        instance = cls()
        if not dict_:
            return instance
        if "platformUserIds" in dict_ and dict_["platformUserIds"] is not None:
            instance.platform_user_ids = [str(i0) for i0 in dict_["platformUserIds"]]
        elif include_empty:
            instance.platform_user_ids = []
        if "pidType" in dict_ and dict_["pidType"] is not None:
            instance.pid_type = str(dict_["pidType"])
        elif include_empty:
            instance.pid_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPlatformUserIDRequestV4]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPlatformUserIDRequestV4]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPlatformUserIDRequestV4,
        List[ModelPlatformUserIDRequestV4],
        Dict[Any, ModelPlatformUserIDRequestV4],
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
            "platformUserIds": "platform_user_ids",
            "pidType": "pid_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platformUserIds": True,
            "pidType": False,
        }

    # endregion static methods
