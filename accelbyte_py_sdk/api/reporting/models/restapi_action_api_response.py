# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Reporting Service (0.1.23)

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


class RestapiActionApiResponse(Model):
    """Restapi action api response (restapi.actionApiResponse)

    Properties:
        action_id: (actionId) REQUIRED str

        action_name: (actionName) REQUIRED str

        event_name: (eventName) REQUIRED str
    """

    # region fields

    action_id: str  # REQUIRED
    action_name: str  # REQUIRED
    event_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_action_id(self, value: str) -> RestapiActionApiResponse:
        self.action_id = value
        return self

    def with_action_name(self, value: str) -> RestapiActionApiResponse:
        self.action_name = value
        return self

    def with_event_name(self, value: str) -> RestapiActionApiResponse:
        self.event_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action_id"):
            result["actionId"] = str(self.action_id)
        elif include_empty:
            result["actionId"] = ""
        if hasattr(self, "action_name"):
            result["actionName"] = str(self.action_name)
        elif include_empty:
            result["actionName"] = ""
        if hasattr(self, "event_name"):
            result["eventName"] = str(self.event_name)
        elif include_empty:
            result["eventName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action_id: str,
        action_name: str,
        event_name: str,
    ) -> RestapiActionApiResponse:
        instance = cls()
        instance.action_id = action_id
        instance.action_name = action_name
        instance.event_name = event_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiActionApiResponse:
        instance = cls()
        if not dict_:
            return instance
        if "actionId" in dict_ and dict_["actionId"] is not None:
            instance.action_id = str(dict_["actionId"])
        elif include_empty:
            instance.action_id = ""
        if "actionName" in dict_ and dict_["actionName"] is not None:
            instance.action_name = str(dict_["actionName"])
        elif include_empty:
            instance.action_name = ""
        if "eventName" in dict_ and dict_["eventName"] is not None:
            instance.event_name = str(dict_["eventName"])
        elif include_empty:
            instance.event_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiActionApiResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiActionApiResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiActionApiResponse,
        List[RestapiActionApiResponse],
        Dict[Any, RestapiActionApiResponse],
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
            "actionId": "action_id",
            "actionName": "action_name",
            "eventName": "event_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "actionId": True,
            "actionName": True,
            "eventName": True,
        }

    # endregion static methods
