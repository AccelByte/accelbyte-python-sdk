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

from ..models.models_psn_event_data import ModelsPSNEventData


class ModelsPSNEvent(Model):
    """Models PSN event (models.PSNEvent)

    Properties:
        date_time: (dateTime) REQUIRED str

        event_data: (eventData) REQUIRED ModelsPSNEventData

        event_id: (eventId) REQUIRED str

        version: (version) REQUIRED str
    """

    # region fields

    date_time: str  # REQUIRED
    event_data: ModelsPSNEventData  # REQUIRED
    event_id: str  # REQUIRED
    version: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_date_time(self, value: str) -> ModelsPSNEvent:
        self.date_time = value
        return self

    def with_event_data(self, value: ModelsPSNEventData) -> ModelsPSNEvent:
        self.event_data = value
        return self

    def with_event_id(self, value: str) -> ModelsPSNEvent:
        self.event_id = value
        return self

    def with_version(self, value: str) -> ModelsPSNEvent:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "date_time"):
            result["dateTime"] = str(self.date_time)
        elif include_empty:
            result["dateTime"] = ""
        if hasattr(self, "event_data"):
            result["eventData"] = self.event_data.to_dict(include_empty=include_empty)
        elif include_empty:
            result["eventData"] = ModelsPSNEventData()
        if hasattr(self, "event_id"):
            result["eventId"] = str(self.event_id)
        elif include_empty:
            result["eventId"] = ""
        if hasattr(self, "version"):
            result["version"] = str(self.version)
        elif include_empty:
            result["version"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        date_time: str,
        event_data: ModelsPSNEventData,
        event_id: str,
        version: str,
        **kwargs,
    ) -> ModelsPSNEvent:
        instance = cls()
        instance.date_time = date_time
        instance.event_data = event_data
        instance.event_id = event_id
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsPSNEvent:
        instance = cls()
        if not dict_:
            return instance
        if "dateTime" in dict_ and dict_["dateTime"] is not None:
            instance.date_time = str(dict_["dateTime"])
        elif include_empty:
            instance.date_time = ""
        if "eventData" in dict_ and dict_["eventData"] is not None:
            instance.event_data = ModelsPSNEventData.create_from_dict(
                dict_["eventData"], include_empty=include_empty
            )
        elif include_empty:
            instance.event_data = ModelsPSNEventData()
        if "eventId" in dict_ and dict_["eventId"] is not None:
            instance.event_id = str(dict_["eventId"])
        elif include_empty:
            instance.event_id = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsPSNEvent]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsPSNEvent]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsPSNEvent, List[ModelsPSNEvent], Dict[Any, ModelsPSNEvent]]:
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
            "dateTime": "date_time",
            "eventData": "event_data",
            "eventId": "event_id",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "dateTime": True,
            "eventData": True,
            "eventId": True,
            "version": True,
        }

    # endregion static methods
