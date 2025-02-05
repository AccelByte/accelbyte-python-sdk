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

from ..models.apimodels_link import ApimodelsLink


class ApimodelsRefreshTicketResponse(Model):
    """Apimodels refresh ticket response (apimodels.RefreshTicketResponse)

    Properties:
        cancel: (cancel) REQUIRED ApimodelsLink

        estimated_waiting_time_in_seconds: (estimatedWaitingTimeInSeconds) REQUIRED int

        namespace: (namespace) REQUIRED str

        player_polling_time_in_seconds: (playerPollingTimeInSeconds) REQUIRED int

        position: (position) REQUIRED int

        reconnect_expired_at: (reconnectExpiredAt) REQUIRED int
    """

    # region fields

    cancel: ApimodelsLink  # REQUIRED
    estimated_waiting_time_in_seconds: int  # REQUIRED
    namespace: str  # REQUIRED
    player_polling_time_in_seconds: int  # REQUIRED
    position: int  # REQUIRED
    reconnect_expired_at: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cancel(self, value: ApimodelsLink) -> ApimodelsRefreshTicketResponse:
        self.cancel = value
        return self

    def with_estimated_waiting_time_in_seconds(
        self, value: int
    ) -> ApimodelsRefreshTicketResponse:
        self.estimated_waiting_time_in_seconds = value
        return self

    def with_namespace(self, value: str) -> ApimodelsRefreshTicketResponse:
        self.namespace = value
        return self

    def with_player_polling_time_in_seconds(
        self, value: int
    ) -> ApimodelsRefreshTicketResponse:
        self.player_polling_time_in_seconds = value
        return self

    def with_position(self, value: int) -> ApimodelsRefreshTicketResponse:
        self.position = value
        return self

    def with_reconnect_expired_at(self, value: int) -> ApimodelsRefreshTicketResponse:
        self.reconnect_expired_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cancel"):
            result["cancel"] = self.cancel.to_dict(include_empty=include_empty)
        elif include_empty:
            result["cancel"] = ApimodelsLink()
        if hasattr(self, "estimated_waiting_time_in_seconds"):
            result["estimatedWaitingTimeInSeconds"] = int(
                self.estimated_waiting_time_in_seconds
            )
        elif include_empty:
            result["estimatedWaitingTimeInSeconds"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "player_polling_time_in_seconds"):
            result["playerPollingTimeInSeconds"] = int(
                self.player_polling_time_in_seconds
            )
        elif include_empty:
            result["playerPollingTimeInSeconds"] = 0
        if hasattr(self, "position"):
            result["position"] = int(self.position)
        elif include_empty:
            result["position"] = 0
        if hasattr(self, "reconnect_expired_at"):
            result["reconnectExpiredAt"] = int(self.reconnect_expired_at)
        elif include_empty:
            result["reconnectExpiredAt"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cancel: ApimodelsLink,
        estimated_waiting_time_in_seconds: int,
        namespace: str,
        player_polling_time_in_seconds: int,
        position: int,
        reconnect_expired_at: int,
        **kwargs,
    ) -> ApimodelsRefreshTicketResponse:
        instance = cls()
        instance.cancel = cancel
        instance.estimated_waiting_time_in_seconds = estimated_waiting_time_in_seconds
        instance.namespace = namespace
        instance.player_polling_time_in_seconds = player_polling_time_in_seconds
        instance.position = position
        instance.reconnect_expired_at = reconnect_expired_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsRefreshTicketResponse:
        instance = cls()
        if not dict_:
            return instance
        if "cancel" in dict_ and dict_["cancel"] is not None:
            instance.cancel = ApimodelsLink.create_from_dict(
                dict_["cancel"], include_empty=include_empty
            )
        elif include_empty:
            instance.cancel = ApimodelsLink()
        if (
            "estimatedWaitingTimeInSeconds" in dict_
            and dict_["estimatedWaitingTimeInSeconds"] is not None
        ):
            instance.estimated_waiting_time_in_seconds = int(
                dict_["estimatedWaitingTimeInSeconds"]
            )
        elif include_empty:
            instance.estimated_waiting_time_in_seconds = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if (
            "playerPollingTimeInSeconds" in dict_
            and dict_["playerPollingTimeInSeconds"] is not None
        ):
            instance.player_polling_time_in_seconds = int(
                dict_["playerPollingTimeInSeconds"]
            )
        elif include_empty:
            instance.player_polling_time_in_seconds = 0
        if "position" in dict_ and dict_["position"] is not None:
            instance.position = int(dict_["position"])
        elif include_empty:
            instance.position = 0
        if "reconnectExpiredAt" in dict_ and dict_["reconnectExpiredAt"] is not None:
            instance.reconnect_expired_at = int(dict_["reconnectExpiredAt"])
        elif include_empty:
            instance.reconnect_expired_at = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsRefreshTicketResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsRefreshTicketResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsRefreshTicketResponse,
        List[ApimodelsRefreshTicketResponse],
        Dict[Any, ApimodelsRefreshTicketResponse],
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
            "cancel": "cancel",
            "estimatedWaitingTimeInSeconds": "estimated_waiting_time_in_seconds",
            "namespace": "namespace",
            "playerPollingTimeInSeconds": "player_polling_time_in_seconds",
            "position": "position",
            "reconnectExpiredAt": "reconnect_expired_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cancel": True,
            "estimatedWaitingTimeInSeconds": True,
            "namespace": True,
            "playerPollingTimeInSeconds": True,
            "position": True,
            "reconnectExpiredAt": True,
        }

    # endregion static methods
