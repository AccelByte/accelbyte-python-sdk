# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class XblUserSessionRequest(Model):
    """A DTO object for xbl user session (XblUserSessionRequest)

    Properties:
        game_session_id: (gameSessionId) REQUIRED str

        payload: (payload) REQUIRED Dict[str, Any]

        scid: (scid) REQUIRED str

        session_template_name: (sessionTemplateName) REQUIRED str
    """

    # region fields

    game_session_id: str  # REQUIRED
    payload: Dict[str, Any]  # REQUIRED
    scid: str  # REQUIRED
    session_template_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_game_session_id(self, value: str) -> XblUserSessionRequest:
        self.game_session_id = value
        return self

    def with_payload(self, value: Dict[str, Any]) -> XblUserSessionRequest:
        self.payload = value
        return self

    def with_scid(self, value: str) -> XblUserSessionRequest:
        self.scid = value
        return self

    def with_session_template_name(self, value: str) -> XblUserSessionRequest:
        self.session_template_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "game_session_id"):
            result["gameSessionId"] = str(self.game_session_id)
        elif include_empty:
            result["gameSessionId"] = ""
        if hasattr(self, "payload"):
            result["payload"] = {str(k0): v0 for k0, v0 in self.payload.items()}
        elif include_empty:
            result["payload"] = {}
        if hasattr(self, "scid"):
            result["scid"] = str(self.scid)
        elif include_empty:
            result["scid"] = ""
        if hasattr(self, "session_template_name"):
            result["sessionTemplateName"] = str(self.session_template_name)
        elif include_empty:
            result["sessionTemplateName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        game_session_id: str,
        payload: Dict[str, Any],
        scid: str,
        session_template_name: str,
        **kwargs,
    ) -> XblUserSessionRequest:
        instance = cls()
        instance.game_session_id = game_session_id
        instance.payload = payload
        instance.scid = scid
        instance.session_template_name = session_template_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XblUserSessionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "gameSessionId" in dict_ and dict_["gameSessionId"] is not None:
            instance.game_session_id = str(dict_["gameSessionId"])
        elif include_empty:
            instance.game_session_id = ""
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = {str(k0): v0 for k0, v0 in dict_["payload"].items()}
        elif include_empty:
            instance.payload = {}
        if "scid" in dict_ and dict_["scid"] is not None:
            instance.scid = str(dict_["scid"])
        elif include_empty:
            instance.scid = ""
        if "sessionTemplateName" in dict_ and dict_["sessionTemplateName"] is not None:
            instance.session_template_name = str(dict_["sessionTemplateName"])
        elif include_empty:
            instance.session_template_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XblUserSessionRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XblUserSessionRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        XblUserSessionRequest,
        List[XblUserSessionRequest],
        Dict[Any, XblUserSessionRequest],
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
            "gameSessionId": "game_session_id",
            "payload": "payload",
            "scid": "scid",
            "sessionTemplateName": "session_template_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "gameSessionId": True,
            "payload": True,
            "scid": True,
            "sessionTemplateName": True,
        }

    # endregion static methods
