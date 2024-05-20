# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Gdpr Service

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


class DtoUserPlatformAccountClosureHistory(Model):
    """Dto user platform account closure history (dto.UserPlatformAccountClosureHistory)

    Properties:
        closed_date: (closedDate) REQUIRED int

        environment: (environment) REQUIRED str

        namespace: (namespace) REQUIRED str

        platform: (platform) REQUIRED str

        platform_user_id: (platformUserId) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    closed_date: int  # REQUIRED
    environment: str  # REQUIRED
    namespace: str  # REQUIRED
    platform: str  # REQUIRED
    platform_user_id: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_closed_date(self, value: int) -> DtoUserPlatformAccountClosureHistory:
        self.closed_date = value
        return self

    def with_environment(self, value: str) -> DtoUserPlatformAccountClosureHistory:
        self.environment = value
        return self

    def with_namespace(self, value: str) -> DtoUserPlatformAccountClosureHistory:
        self.namespace = value
        return self

    def with_platform(self, value: str) -> DtoUserPlatformAccountClosureHistory:
        self.platform = value
        return self

    def with_platform_user_id(self, value: str) -> DtoUserPlatformAccountClosureHistory:
        self.platform_user_id = value
        return self

    def with_user_id(self, value: str) -> DtoUserPlatformAccountClosureHistory:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "closed_date"):
            result["closedDate"] = int(self.closed_date)
        elif include_empty:
            result["closedDate"] = 0
        if hasattr(self, "environment"):
            result["environment"] = str(self.environment)
        elif include_empty:
            result["environment"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "platform_user_id"):
            result["platformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserId"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        closed_date: int,
        environment: str,
        namespace: str,
        platform: str,
        platform_user_id: str,
        user_id: str,
        **kwargs,
    ) -> DtoUserPlatformAccountClosureHistory:
        instance = cls()
        instance.closed_date = closed_date
        instance.environment = environment
        instance.namespace = namespace
        instance.platform = platform
        instance.platform_user_id = platform_user_id
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoUserPlatformAccountClosureHistory:
        instance = cls()
        if not dict_:
            return instance
        if "closedDate" in dict_ and dict_["closedDate"] is not None:
            instance.closed_date = int(dict_["closedDate"])
        elif include_empty:
            instance.closed_date = 0
        if "environment" in dict_ and dict_["environment"] is not None:
            instance.environment = str(dict_["environment"])
        elif include_empty:
            instance.environment = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DtoUserPlatformAccountClosureHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoUserPlatformAccountClosureHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoUserPlatformAccountClosureHistory,
        List[DtoUserPlatformAccountClosureHistory],
        Dict[Any, DtoUserPlatformAccountClosureHistory],
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
            "closedDate": "closed_date",
            "environment": "environment",
            "namespace": "namespace",
            "platform": "platform",
            "platformUserId": "platform_user_id",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "closedDate": True,
            "environment": True,
            "namespace": True,
            "platform": True,
            "platformUserId": True,
            "userId": True,
        }

    # endregion static methods
