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


class DtoPlatformAccountClosureMockRequest(Model):
    """Dto platform account closure mock request (dto.PlatformAccountClosureMockRequest)

    Properties:
        platform_user_id: (platformUserId) REQUIRED str

        sandbox: (sandbox) REQUIRED str

        start_immediately: (startImmediately) REQUIRED bool
    """

    # region fields

    platform_user_id: str  # REQUIRED
    sandbox: str  # REQUIRED
    start_immediately: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_platform_user_id(self, value: str) -> DtoPlatformAccountClosureMockRequest:
        self.platform_user_id = value
        return self

    def with_sandbox(self, value: str) -> DtoPlatformAccountClosureMockRequest:
        self.sandbox = value
        return self

    def with_start_immediately(
        self, value: bool
    ) -> DtoPlatformAccountClosureMockRequest:
        self.start_immediately = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_user_id"):
            result["platformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserId"] = ""
        if hasattr(self, "sandbox"):
            result["sandbox"] = str(self.sandbox)
        elif include_empty:
            result["sandbox"] = ""
        if hasattr(self, "start_immediately"):
            result["startImmediately"] = bool(self.start_immediately)
        elif include_empty:
            result["startImmediately"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, platform_user_id: str, sandbox: str, start_immediately: bool, **kwargs
    ) -> DtoPlatformAccountClosureMockRequest:
        instance = cls()
        instance.platform_user_id = platform_user_id
        instance.sandbox = sandbox
        instance.start_immediately = start_immediately
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoPlatformAccountClosureMockRequest:
        instance = cls()
        if not dict_:
            return instance
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = str(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = ""
        if "startImmediately" in dict_ and dict_["startImmediately"] is not None:
            instance.start_immediately = bool(dict_["startImmediately"])
        elif include_empty:
            instance.start_immediately = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DtoPlatformAccountClosureMockRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoPlatformAccountClosureMockRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoPlatformAccountClosureMockRequest,
        List[DtoPlatformAccountClosureMockRequest],
        Dict[Any, DtoPlatformAccountClosureMockRequest],
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
            "platformUserId": "platform_user_id",
            "sandbox": "sandbox",
            "startImmediately": "start_immediately",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platformUserId": True,
            "sandbox": True,
            "startImmediately": True,
        }

    # endregion static methods
