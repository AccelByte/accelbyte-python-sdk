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

from ..models.oauthmodel_ticket_endpoint_action import OauthmodelTicketEndpointAction


class OauthmodelLoginQueueTicketResponse(Model):
    """Oauthmodel login queue ticket response (oauthmodel.LoginQueueTicketResponse)

    Properties:
        cancel: (cancel) REQUIRED OauthmodelTicketEndpointAction

        estimated_waiting_time_in_seconds: (estimatedWaitingTimeInSeconds) REQUIRED int

        player_polling_time_in_seconds: (playerPollingTimeInSeconds) REQUIRED int

        position: (position) REQUIRED int

        reconnect_expired_at: (reconnectExpiredAt) REQUIRED int

        refresh: (refresh) REQUIRED OauthmodelTicketEndpointAction

        ticket: (ticket) REQUIRED str
    """

    # region fields

    cancel: OauthmodelTicketEndpointAction  # REQUIRED
    estimated_waiting_time_in_seconds: int  # REQUIRED
    player_polling_time_in_seconds: int  # REQUIRED
    position: int  # REQUIRED
    reconnect_expired_at: int  # REQUIRED
    refresh: OauthmodelTicketEndpointAction  # REQUIRED
    ticket: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cancel(
        self, value: OauthmodelTicketEndpointAction
    ) -> OauthmodelLoginQueueTicketResponse:
        self.cancel = value
        return self

    def with_estimated_waiting_time_in_seconds(
        self, value: int
    ) -> OauthmodelLoginQueueTicketResponse:
        self.estimated_waiting_time_in_seconds = value
        return self

    def with_player_polling_time_in_seconds(
        self, value: int
    ) -> OauthmodelLoginQueueTicketResponse:
        self.player_polling_time_in_seconds = value
        return self

    def with_position(self, value: int) -> OauthmodelLoginQueueTicketResponse:
        self.position = value
        return self

    def with_reconnect_expired_at(
        self, value: int
    ) -> OauthmodelLoginQueueTicketResponse:
        self.reconnect_expired_at = value
        return self

    def with_refresh(
        self, value: OauthmodelTicketEndpointAction
    ) -> OauthmodelLoginQueueTicketResponse:
        self.refresh = value
        return self

    def with_ticket(self, value: str) -> OauthmodelLoginQueueTicketResponse:
        self.ticket = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cancel"):
            result["cancel"] = self.cancel.to_dict(include_empty=include_empty)
        elif include_empty:
            result["cancel"] = OauthmodelTicketEndpointAction()
        if hasattr(self, "estimated_waiting_time_in_seconds"):
            result["estimatedWaitingTimeInSeconds"] = int(
                self.estimated_waiting_time_in_seconds
            )
        elif include_empty:
            result["estimatedWaitingTimeInSeconds"] = 0
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
        if hasattr(self, "refresh"):
            result["refresh"] = self.refresh.to_dict(include_empty=include_empty)
        elif include_empty:
            result["refresh"] = OauthmodelTicketEndpointAction()
        if hasattr(self, "ticket"):
            result["ticket"] = str(self.ticket)
        elif include_empty:
            result["ticket"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cancel: OauthmodelTicketEndpointAction,
        estimated_waiting_time_in_seconds: int,
        player_polling_time_in_seconds: int,
        position: int,
        reconnect_expired_at: int,
        refresh: OauthmodelTicketEndpointAction,
        ticket: str,
        **kwargs,
    ) -> OauthmodelLoginQueueTicketResponse:
        instance = cls()
        instance.cancel = cancel
        instance.estimated_waiting_time_in_seconds = estimated_waiting_time_in_seconds
        instance.player_polling_time_in_seconds = player_polling_time_in_seconds
        instance.position = position
        instance.reconnect_expired_at = reconnect_expired_at
        instance.refresh = refresh
        instance.ticket = ticket
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelLoginQueueTicketResponse:
        instance = cls()
        if not dict_:
            return instance
        if "cancel" in dict_ and dict_["cancel"] is not None:
            instance.cancel = OauthmodelTicketEndpointAction.create_from_dict(
                dict_["cancel"], include_empty=include_empty
            )
        elif include_empty:
            instance.cancel = OauthmodelTicketEndpointAction()
        if (
            "estimatedWaitingTimeInSeconds" in dict_
            and dict_["estimatedWaitingTimeInSeconds"] is not None
        ):
            instance.estimated_waiting_time_in_seconds = int(
                dict_["estimatedWaitingTimeInSeconds"]
            )
        elif include_empty:
            instance.estimated_waiting_time_in_seconds = 0
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
        if "refresh" in dict_ and dict_["refresh"] is not None:
            instance.refresh = OauthmodelTicketEndpointAction.create_from_dict(
                dict_["refresh"], include_empty=include_empty
            )
        elif include_empty:
            instance.refresh = OauthmodelTicketEndpointAction()
        if "ticket" in dict_ and dict_["ticket"] is not None:
            instance.ticket = str(dict_["ticket"])
        elif include_empty:
            instance.ticket = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelLoginQueueTicketResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelLoginQueueTicketResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelLoginQueueTicketResponse,
        List[OauthmodelLoginQueueTicketResponse],
        Dict[Any, OauthmodelLoginQueueTicketResponse],
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
            "playerPollingTimeInSeconds": "player_polling_time_in_seconds",
            "position": "position",
            "reconnectExpiredAt": "reconnect_expired_at",
            "refresh": "refresh",
            "ticket": "ticket",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cancel": True,
            "estimatedWaitingTimeInSeconds": True,
            "playerPollingTimeInSeconds": True,
            "position": True,
            "reconnectExpiredAt": True,
            "refresh": True,
            "ticket": True,
        }

    # endregion static methods
