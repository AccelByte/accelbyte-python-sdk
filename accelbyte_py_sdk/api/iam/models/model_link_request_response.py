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

from ..models.rest_error_response_with_conflicted_user_platform_accounts import (
    RestErrorResponseWithConflictedUserPlatformAccounts,
)


class ModelLinkRequestResponse(Model):
    """Model link request response (model.LinkRequestResponse)

    Properties:
        client_id: (clientId) REQUIRED str

        namespace: (namespace) REQUIRED str

        payload: (payload) REQUIRED Dict[str, Any]

        redirect_uri: (redirectUri) REQUIRED str

        request_id: (requestId) REQUIRED str

        status: (status) REQUIRED str

        conflict_publisher_user_id: (conflictPublisherUserId) OPTIONAL str

        conflict_user_linked_games: (conflictUserLinkedGames) OPTIONAL List[str]

        current_user_linked_games: (currentUserLinkedGames) OPTIONAL List[str]

        error: (error) OPTIONAL RestErrorResponseWithConflictedUserPlatformAccounts

        expiration: (expiration) OPTIONAL int

        platform_display_name: (platformDisplayName) OPTIONAL str

        platform_id: (platformId) OPTIONAL str

        platform_user_id: (platformUserId) OPTIONAL str

        user_id: (userId) OPTIONAL str
    """

    # region fields

    client_id: str  # REQUIRED
    namespace: str  # REQUIRED
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
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_id(self, value: str) -> ModelLinkRequestResponse:
        self.client_id = value
        return self

    def with_namespace(self, value: str) -> ModelLinkRequestResponse:
        self.namespace = value
        return self

    def with_payload(self, value: Dict[str, Any]) -> ModelLinkRequestResponse:
        self.payload = value
        return self

    def with_redirect_uri(self, value: str) -> ModelLinkRequestResponse:
        self.redirect_uri = value
        return self

    def with_request_id(self, value: str) -> ModelLinkRequestResponse:
        self.request_id = value
        return self

    def with_status(self, value: str) -> ModelLinkRequestResponse:
        self.status = value
        return self

    def with_conflict_publisher_user_id(self, value: str) -> ModelLinkRequestResponse:
        self.conflict_publisher_user_id = value
        return self

    def with_conflict_user_linked_games(
        self, value: List[str]
    ) -> ModelLinkRequestResponse:
        self.conflict_user_linked_games = value
        return self

    def with_current_user_linked_games(
        self, value: List[str]
    ) -> ModelLinkRequestResponse:
        self.current_user_linked_games = value
        return self

    def with_error(
        self, value: RestErrorResponseWithConflictedUserPlatformAccounts
    ) -> ModelLinkRequestResponse:
        self.error = value
        return self

    def with_expiration(self, value: int) -> ModelLinkRequestResponse:
        self.expiration = value
        return self

    def with_platform_display_name(self, value: str) -> ModelLinkRequestResponse:
        self.platform_display_name = value
        return self

    def with_platform_id(self, value: str) -> ModelLinkRequestResponse:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> ModelLinkRequestResponse:
        self.platform_user_id = value
        return self

    def with_user_id(self, value: str) -> ModelLinkRequestResponse:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_id"):
            result["clientId"] = str(self.client_id)
        elif include_empty:
            result["clientId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "payload"):
            result["payload"] = {str(k0): v0 for k0, v0 in self.payload.items()}
        elif include_empty:
            result["payload"] = {}
        if hasattr(self, "redirect_uri"):
            result["redirectUri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirectUri"] = ""
        if hasattr(self, "request_id"):
            result["requestId"] = str(self.request_id)
        elif include_empty:
            result["requestId"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "conflict_publisher_user_id"):
            result["conflictPublisherUserId"] = str(self.conflict_publisher_user_id)
        elif include_empty:
            result["conflictPublisherUserId"] = ""
        if hasattr(self, "conflict_user_linked_games"):
            result["conflictUserLinkedGames"] = [
                str(i0) for i0 in self.conflict_user_linked_games
            ]
        elif include_empty:
            result["conflictUserLinkedGames"] = []
        if hasattr(self, "current_user_linked_games"):
            result["currentUserLinkedGames"] = [
                str(i0) for i0 in self.current_user_linked_games
            ]
        elif include_empty:
            result["currentUserLinkedGames"] = []
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
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
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
        client_id: str,
        namespace: str,
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
        user_id: Optional[str] = None,
        **kwargs,
    ) -> ModelLinkRequestResponse:
        instance = cls()
        instance.client_id = client_id
        instance.namespace = namespace
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
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelLinkRequestResponse:
        instance = cls()
        if not dict_:
            return instance
        if "clientId" in dict_ and dict_["clientId"] is not None:
            instance.client_id = str(dict_["clientId"])
        elif include_empty:
            instance.client_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = {str(k0): v0 for k0, v0 in dict_["payload"].items()}
        elif include_empty:
            instance.payload = {}
        if "redirectUri" in dict_ and dict_["redirectUri"] is not None:
            instance.redirect_uri = str(dict_["redirectUri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "requestId" in dict_ and dict_["requestId"] is not None:
            instance.request_id = str(dict_["requestId"])
        elif include_empty:
            instance.request_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if (
            "conflictPublisherUserId" in dict_
            and dict_["conflictPublisherUserId"] is not None
        ):
            instance.conflict_publisher_user_id = str(dict_["conflictPublisherUserId"])
        elif include_empty:
            instance.conflict_publisher_user_id = ""
        if (
            "conflictUserLinkedGames" in dict_
            and dict_["conflictUserLinkedGames"] is not None
        ):
            instance.conflict_user_linked_games = [
                str(i0) for i0 in dict_["conflictUserLinkedGames"]
            ]
        elif include_empty:
            instance.conflict_user_linked_games = []
        if (
            "currentUserLinkedGames" in dict_
            and dict_["currentUserLinkedGames"] is not None
        ):
            instance.current_user_linked_games = [
                str(i0) for i0 in dict_["currentUserLinkedGames"]
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
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
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
    ) -> Dict[str, ModelLinkRequestResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelLinkRequestResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelLinkRequestResponse,
        List[ModelLinkRequestResponse],
        Dict[Any, ModelLinkRequestResponse],
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
            "clientId": "client_id",
            "namespace": "namespace",
            "payload": "payload",
            "redirectUri": "redirect_uri",
            "requestId": "request_id",
            "status": "status",
            "conflictPublisherUserId": "conflict_publisher_user_id",
            "conflictUserLinkedGames": "conflict_user_linked_games",
            "currentUserLinkedGames": "current_user_linked_games",
            "error": "error",
            "expiration": "expiration",
            "platformDisplayName": "platform_display_name",
            "platformId": "platform_id",
            "platformUserId": "platform_user_id",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientId": True,
            "namespace": True,
            "payload": True,
            "redirectUri": True,
            "requestId": True,
            "status": True,
            "conflictPublisherUserId": False,
            "conflictUserLinkedGames": False,
            "currentUserLinkedGames": False,
            "error": False,
            "expiration": False,
            "platformDisplayName": False,
            "platformId": False,
            "platformUserId": False,
            "userId": False,
        }

    # endregion static methods
