# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Achievement Service

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

from ..models.models_psn_event import ModelsPSNEvent


class ModelsCreatePSNEvent(Model):
    """Models create PSN event (models.CreatePSNEvent)

    Properties:
        events: (events) REQUIRED List[ModelsPSNEvent]

        third_party_user_id: (thirdPartyUserId) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    events: List[ModelsPSNEvent]  # REQUIRED
    third_party_user_id: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_events(self, value: List[ModelsPSNEvent]) -> ModelsCreatePSNEvent:
        self.events = value
        return self

    def with_third_party_user_id(self, value: str) -> ModelsCreatePSNEvent:
        self.third_party_user_id = value
        return self

    def with_user_id(self, value: str) -> ModelsCreatePSNEvent:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "events"):
            result["events"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.events
            ]
        elif include_empty:
            result["events"] = []
        if hasattr(self, "third_party_user_id"):
            result["thirdPartyUserId"] = str(self.third_party_user_id)
        elif include_empty:
            result["thirdPartyUserId"] = ""
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
        events: List[ModelsPSNEvent],
        third_party_user_id: str,
        user_id: str,
        **kwargs,
    ) -> ModelsCreatePSNEvent:
        instance = cls()
        instance.events = events
        instance.third_party_user_id = third_party_user_id
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreatePSNEvent:
        instance = cls()
        if not dict_:
            return instance
        if "events" in dict_ and dict_["events"] is not None:
            instance.events = [
                ModelsPSNEvent.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["events"]
            ]
        elif include_empty:
            instance.events = []
        if "thirdPartyUserId" in dict_ and dict_["thirdPartyUserId"] is not None:
            instance.third_party_user_id = str(dict_["thirdPartyUserId"])
        elif include_empty:
            instance.third_party_user_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreatePSNEvent]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreatePSNEvent]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreatePSNEvent,
        List[ModelsCreatePSNEvent],
        Dict[Any, ModelsCreatePSNEvent],
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
            "events": "events",
            "thirdPartyUserId": "third_party_user_id",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "events": True,
            "thirdPartyUserId": True,
            "userId": True,
        }

    # endregion static methods
