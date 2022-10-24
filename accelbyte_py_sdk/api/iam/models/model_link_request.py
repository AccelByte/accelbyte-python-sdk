# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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

from ..models.rest_error_response_with_conflicted_user_platform_accounts import (
    RestErrorResponseWithConflictedUserPlatformAccounts,
)


class ModelLinkRequest(Model):
    """Model link request (model.LinkRequest)

    Properties:
        client_id: (client_id) REQUIRED str

        namespace: (namespace) REQUIRED str

        operation_name: (operation_name) REQUIRED str

        payload: (payload) REQUIRED Dict[str, Any]

        redirect_uri: (redirect_uri) REQUIRED str

        request_id: (request_id) REQUIRED str

        status: (status) REQUIRED str

        conflict_publisher_user_id: (conflict_publisher_user_id) OPTIONAL str

        conflict_user_linked_games: (conflict_user_linked_games) OPTIONAL List[str]

        current_user_linked_games: (current_user_linked_games) OPTIONAL List[str]

        error: (error) OPTIONAL RestErrorResponseWithConflictedUserPlatformAccounts

        expiration: (expiration) OPTIONAL int

        platform_display_name: (platformDisplayName) OPTIONAL str

        platform_id: (platformID) OPTIONAL str

        platform_user_id: (platform_user_id) OPTIONAL str

        refresh_token: (refreshToken) OPTIONAL str
    """

    # region fields

    client_id: str  # REQUIRED
    namespace: str  # REQUIRED
    operation_name: str  # REQUIRED
    payload: Dict[str, Any]  # REQUIRED
    redirect_uri: str  # REQUIRED
    request_id: str  # REQUIRED
    status: str  # REQUIRED
    conflict_publisher_user_id: str  # OPTIONAL
    conflict_user_linked_games: List[str]  # OPTIONAL
    current_user_linked_games: List[str]  # OPTIONAL
    error: RestErrorResponseWithConflictedUserPlatformAccounts  # OPTIONAL
    expiration: int  # OPTIONAL
    platform_display_name: str  # OPTIONAL
    platform_id: str  # OPTIONAL
    platform_user_id: str  # OPTIONAL
    refresh_token: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> ModelLinkRequest:
        self.client_id = value
        return self

    def with_namespace(self, value: str) -> ModelLinkRequest:
        self.namespace = value
        return self

    def with_operation_name(self, value: str) -> ModelLinkRequest:
        self.operation_name = value
        return self

    def with_payload(self, value: Dict[str, Any]) -> ModelLinkRequest:
        self.payload = value
        return self

    def with_redirect_uri(self, value: str) -> ModelLinkRequest:
        self.redirect_uri = value
        return self

    def with_request_id(self, value: str) -> ModelLinkRequest:
        self.request_id = value
        return self

    def with_status(self, value: str) -> ModelLinkRequest:
        self.status = value
        return self

    def with_conflict_publisher_user_id(self, value: str) -> ModelLinkRequest:
        self.conflict_publisher_user_id = value
        return self

    def with_conflict_user_linked_games(self, value: List[str]) -> ModelLinkRequest:
        self.conflict_user_linked_games = value
        return self

    def with_current_user_linked_games(self, value: List[str]) -> ModelLinkRequest:
        self.current_user_linked_games = value
        return self

    def with_error(
        self, value: RestErrorResponseWithConflictedUserPlatformAccounts
    ) -> ModelLinkRequest:
        self.error = value
        return self

    def with_expiration(self, value: int) -> ModelLinkRequest:
        self.expiration = value
        return self

    def with_platform_display_name(self, value: str) -> ModelLinkRequest:
        self.platform_display_name = value
        return self

    def with_platform_id(self, value: str) -> ModelLinkRequest:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> ModelLinkRequest:
        self.platform_user_id = value
        return self

    def with_refresh_token(self, value: str) -> ModelLinkRequest:
        self.refresh_token = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "operation_name"):
            result["operation_name"] = str(self.operation_name)
        elif include_empty:
            result["operation_name"] = ""
        if hasattr(self, "payload"):
            result["payload"] = {str(k0): v0 for k0, v0 in self.payload.items()}
        elif include_empty:
            result["payload"] = {}
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = ""
        if hasattr(self, "request_id"):
            result["request_id"] = str(self.request_id)
        elif include_empty:
            result["request_id"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "conflict_publisher_user_id"):
            result["conflict_publisher_user_id"] = str(self.conflict_publisher_user_id)
        elif include_empty:
            result["conflict_publisher_user_id"] = ""
        if hasattr(self, "conflict_user_linked_games"):
            result["conflict_user_linked_games"] = [
                str(i0) for i0 in self.conflict_user_linked_games
            ]
        elif include_empty:
            result["conflict_user_linked_games"] = []
        if hasattr(self, "current_user_linked_games"):
            result["current_user_linked_games"] = [
                str(i0) for i0 in self.current_user_linked_games
            ]
        elif include_empty:
            result["current_user_linked_games"] = []
        if hasattr(self, "error"):
            result["error"] = self.error.to_dict(include_empty=include_empty)
        elif include_empty:
            result["error"] = RestErrorResponseWithConflictedUserPlatformAccounts()
        if hasattr(self, "expiration"):
            result["expiration"] = int(self.expiration)
        elif include_empty:
            result["expiration"] = 0
        if hasattr(self, "platform_display_name"):
            result["platformDisplayName"] = str(self.platform_display_name)
        elif include_empty:
            result["platformDisplayName"] = ""
        if hasattr(self, "platform_id"):
            result["platformID"] = str(self.platform_id)
        elif include_empty:
            result["platformID"] = ""
        if hasattr(self, "platform_user_id"):
            result["platform_user_id"] = str(self.platform_user_id)
        elif include_empty:
            result["platform_user_id"] = ""
        if hasattr(self, "refresh_token"):
            result["refreshToken"] = str(self.refresh_token)
        elif include_empty:
            result["refreshToken"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        namespace: str,
        operation_name: str,
        payload: Dict[str, Any],
        redirect_uri: str,
        request_id: str,
        status: str,
        conflict_publisher_user_id: Optional[str] = None,
        conflict_user_linked_games: Optional[List[str]] = None,
        current_user_linked_games: Optional[List[str]] = None,
        error: Optional[RestErrorResponseWithConflictedUserPlatformAccounts] = None,
        expiration: Optional[int] = None,
        platform_display_name: Optional[str] = None,
        platform_id: Optional[str] = None,
        platform_user_id: Optional[str] = None,
        refresh_token: Optional[str] = None,
    ) -> ModelLinkRequest:
        instance = cls()
        instance.client_id = client_id
        instance.namespace = namespace
        instance.operation_name = operation_name
        instance.payload = payload
        instance.redirect_uri = redirect_uri
        instance.request_id = request_id
        instance.status = status
        if conflict_publisher_user_id is not None:
            instance.conflict_publisher_user_id = conflict_publisher_user_id
        if conflict_user_linked_games is not None:
            instance.conflict_user_linked_games = conflict_user_linked_games
        if current_user_linked_games is not None:
            instance.current_user_linked_games = current_user_linked_games
        if error is not None:
            instance.error = error
        if expiration is not None:
            instance.expiration = expiration
        if platform_display_name is not None:
            instance.platform_display_name = platform_display_name
        if platform_id is not None:
            instance.platform_id = platform_id
        if platform_user_id is not None:
            instance.platform_user_id = platform_user_id
        if refresh_token is not None:
            instance.refresh_token = refresh_token
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelLinkRequest:
        instance = cls()
        if not dict_:
            return instance
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "operation_name" in dict_ and dict_["operation_name"] is not None:
            instance.operation_name = str(dict_["operation_name"])
        elif include_empty:
            instance.operation_name = ""
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = {str(k0): v0 for k0, v0 in dict_["payload"].items()}
        elif include_empty:
            instance.payload = {}
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "request_id" in dict_ and dict_["request_id"] is not None:
            instance.request_id = str(dict_["request_id"])
        elif include_empty:
            instance.request_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if (
            "conflict_publisher_user_id" in dict_
            and dict_["conflict_publisher_user_id"] is not None
        ):
            instance.conflict_publisher_user_id = str(
                dict_["conflict_publisher_user_id"]
            )
        elif include_empty:
            instance.conflict_publisher_user_id = ""
        if (
            "conflict_user_linked_games" in dict_
            and dict_["conflict_user_linked_games"] is not None
        ):
            instance.conflict_user_linked_games = [
                str(i0) for i0 in dict_["conflict_user_linked_games"]
            ]
        elif include_empty:
            instance.conflict_user_linked_games = []
        if (
            "current_user_linked_games" in dict_
            and dict_["current_user_linked_games"] is not None
        ):
            instance.current_user_linked_games = [
                str(i0) for i0 in dict_["current_user_linked_games"]
            ]
        elif include_empty:
            instance.current_user_linked_games = []
        if "error" in dict_ and dict_["error"] is not None:
            instance.error = (
                RestErrorResponseWithConflictedUserPlatformAccounts.create_from_dict(
                    dict_["error"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.error = RestErrorResponseWithConflictedUserPlatformAccounts()
        if "expiration" in dict_ and dict_["expiration"] is not None:
            instance.expiration = int(dict_["expiration"])
        elif include_empty:
            instance.expiration = 0
        if "platformDisplayName" in dict_ and dict_["platformDisplayName"] is not None:
            instance.platform_display_name = str(dict_["platformDisplayName"])
        elif include_empty:
            instance.platform_display_name = ""
        if "platformID" in dict_ and dict_["platformID"] is not None:
            instance.platform_id = str(dict_["platformID"])
        elif include_empty:
            instance.platform_id = ""
        if "platform_user_id" in dict_ and dict_["platform_user_id"] is not None:
            instance.platform_user_id = str(dict_["platform_user_id"])
        elif include_empty:
            instance.platform_user_id = ""
        if "refreshToken" in dict_ and dict_["refreshToken"] is not None:
            instance.refresh_token = str(dict_["refreshToken"])
        elif include_empty:
            instance.refresh_token = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelLinkRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelLinkRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelLinkRequest, List[ModelLinkRequest], Dict[Any, ModelLinkRequest]]:
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
            "client_id": "client_id",
            "namespace": "namespace",
            "operation_name": "operation_name",
            "payload": "payload",
            "redirect_uri": "redirect_uri",
            "request_id": "request_id",
            "status": "status",
            "conflict_publisher_user_id": "conflict_publisher_user_id",
            "conflict_user_linked_games": "conflict_user_linked_games",
            "current_user_linked_games": "current_user_linked_games",
            "error": "error",
            "expiration": "expiration",
            "platformDisplayName": "platform_display_name",
            "platformID": "platform_id",
            "platform_user_id": "platform_user_id",
            "refreshToken": "refresh_token",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "client_id": True,
            "namespace": True,
            "operation_name": True,
            "payload": True,
            "redirect_uri": True,
            "request_id": True,
            "status": True,
            "conflict_publisher_user_id": False,
            "conflict_user_linked_games": False,
            "current_user_linked_games": False,
            "error": False,
            "expiration": False,
            "platformDisplayName": False,
            "platformID": False,
            "platform_user_id": False,
            "refreshToken": False,
        }

    # endregion static methods
