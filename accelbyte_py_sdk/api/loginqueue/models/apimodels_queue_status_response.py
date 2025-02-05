# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Login Queue Service

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


class ApimodelsQueueStatusResponse(Model):
    """Apimodels queue status response (apimodels.QueueStatusResponse)

    Properties:
        is_active: (isActive) REQUIRED bool

        logged_user_count: (loggedUserCount) REQUIRED int

        login_rps: (loginRPS) REQUIRED int

        namespace: (namespace) REQUIRED str

        queue_count: (queueCount) REQUIRED int
    """

    # region fields

    is_active: bool  # REQUIRED
    logged_user_count: int  # REQUIRED
    login_rps: int  # REQUIRED
    namespace: str  # REQUIRED
    queue_count: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_is_active(self, value: bool) -> ApimodelsQueueStatusResponse:
        self.is_active = value
        return self

    def with_logged_user_count(self, value: int) -> ApimodelsQueueStatusResponse:
        self.logged_user_count = value
        return self

    def with_login_rps(self, value: int) -> ApimodelsQueueStatusResponse:
        self.login_rps = value
        return self

    def with_namespace(self, value: str) -> ApimodelsQueueStatusResponse:
        self.namespace = value
        return self

    def with_queue_count(self, value: int) -> ApimodelsQueueStatusResponse:
        self.queue_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_active"):
            result["isActive"] = bool(self.is_active)
        elif include_empty:
            result["isActive"] = False
        if hasattr(self, "logged_user_count"):
            result["loggedUserCount"] = int(self.logged_user_count)
        elif include_empty:
            result["loggedUserCount"] = 0
        if hasattr(self, "login_rps"):
            result["loginRPS"] = int(self.login_rps)
        elif include_empty:
            result["loginRPS"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "queue_count"):
            result["queueCount"] = int(self.queue_count)
        elif include_empty:
            result["queueCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        is_active: bool,
        logged_user_count: int,
        login_rps: int,
        namespace: str,
        queue_count: int,
        **kwargs,
    ) -> ApimodelsQueueStatusResponse:
        instance = cls()
        instance.is_active = is_active
        instance.logged_user_count = logged_user_count
        instance.login_rps = login_rps
        instance.namespace = namespace
        instance.queue_count = queue_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsQueueStatusResponse:
        instance = cls()
        if not dict_:
            return instance
        if "isActive" in dict_ and dict_["isActive"] is not None:
            instance.is_active = bool(dict_["isActive"])
        elif include_empty:
            instance.is_active = False
        if "loggedUserCount" in dict_ and dict_["loggedUserCount"] is not None:
            instance.logged_user_count = int(dict_["loggedUserCount"])
        elif include_empty:
            instance.logged_user_count = 0
        if "loginRPS" in dict_ and dict_["loginRPS"] is not None:
            instance.login_rps = int(dict_["loginRPS"])
        elif include_empty:
            instance.login_rps = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "queueCount" in dict_ and dict_["queueCount"] is not None:
            instance.queue_count = int(dict_["queueCount"])
        elif include_empty:
            instance.queue_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsQueueStatusResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsQueueStatusResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsQueueStatusResponse,
        List[ApimodelsQueueStatusResponse],
        Dict[Any, ApimodelsQueueStatusResponse],
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
            "isActive": "is_active",
            "loggedUserCount": "logged_user_count",
            "loginRPS": "login_rps",
            "namespace": "namespace",
            "queueCount": "queue_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "isActive": True,
            "loggedUserCount": True,
            "loginRPS": True,
            "namespace": True,
            "queueCount": True,
        }

    # endregion static methods
