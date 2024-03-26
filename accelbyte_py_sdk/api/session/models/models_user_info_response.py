# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ModelsUserInfoResponse(Model):
    """Models user info response (models.UserInfoResponse)

    Properties:
        last_played_time: (lastPlayedTime) OPTIONAL str

        match_pool: (matchPool) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        platform_name: (platformName) OPTIONAL str

        session_template: (sessionTemplate) OPTIONAL str

        user_id: (userID) OPTIONAL str
    """

    # region fields

    last_played_time: str  # OPTIONAL
    match_pool: str  # OPTIONAL
    namespace: str  # OPTIONAL
    platform_name: str  # OPTIONAL
    session_template: str  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_last_played_time(self, value: str) -> ModelsUserInfoResponse:
        self.last_played_time = value
        return self

    def with_match_pool(self, value: str) -> ModelsUserInfoResponse:
        self.match_pool = value
        return self

    def with_namespace(self, value: str) -> ModelsUserInfoResponse:
        self.namespace = value
        return self

    def with_platform_name(self, value: str) -> ModelsUserInfoResponse:
        self.platform_name = value
        return self

    def with_session_template(self, value: str) -> ModelsUserInfoResponse:
        self.session_template = value
        return self

    def with_user_id(self, value: str) -> ModelsUserInfoResponse:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "last_played_time"):
            result["lastPlayedTime"] = str(self.last_played_time)
        elif include_empty:
            result["lastPlayedTime"] = ""
        if hasattr(self, "match_pool"):
            result["matchPool"] = str(self.match_pool)
        elif include_empty:
            result["matchPool"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform_name"):
            result["platformName"] = str(self.platform_name)
        elif include_empty:
            result["platformName"] = ""
        if hasattr(self, "session_template"):
            result["sessionTemplate"] = str(self.session_template)
        elif include_empty:
            result["sessionTemplate"] = ""
        if hasattr(self, "user_id"):
            result["userID"] = str(self.user_id)
        elif include_empty:
            result["userID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        last_played_time: Optional[str] = None,
        match_pool: Optional[str] = None,
        namespace: Optional[str] = None,
        platform_name: Optional[str] = None,
        session_template: Optional[str] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> ModelsUserInfoResponse:
        instance = cls()
        if last_played_time is not None:
            instance.last_played_time = last_played_time
        if match_pool is not None:
            instance.match_pool = match_pool
        if namespace is not None:
            instance.namespace = namespace
        if platform_name is not None:
            instance.platform_name = platform_name
        if session_template is not None:
            instance.session_template = session_template
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUserInfoResponse:
        instance = cls()
        if not dict_:
            return instance
        if "lastPlayedTime" in dict_ and dict_["lastPlayedTime"] is not None:
            instance.last_played_time = str(dict_["lastPlayedTime"])
        elif include_empty:
            instance.last_played_time = ""
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = str(dict_["matchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platformName" in dict_ and dict_["platformName"] is not None:
            instance.platform_name = str(dict_["platformName"])
        elif include_empty:
            instance.platform_name = ""
        if "sessionTemplate" in dict_ and dict_["sessionTemplate"] is not None:
            instance.session_template = str(dict_["sessionTemplate"])
        elif include_empty:
            instance.session_template = ""
        if "userID" in dict_ and dict_["userID"] is not None:
            instance.user_id = str(dict_["userID"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUserInfoResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUserInfoResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUserInfoResponse,
        List[ModelsUserInfoResponse],
        Dict[Any, ModelsUserInfoResponse],
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
            "lastPlayedTime": "last_played_time",
            "matchPool": "match_pool",
            "namespace": "namespace",
            "platformName": "platform_name",
            "sessionTemplate": "session_template",
            "userID": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "lastPlayedTime": False,
            "matchPool": False,
            "namespace": False,
            "platformName": False,
            "sessionTemplate": False,
            "userID": False,
        }

    # endregion static methods
