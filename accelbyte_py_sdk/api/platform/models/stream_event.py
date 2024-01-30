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

from ..models.stream_event_body import StreamEventBody


class StreamEvent(Model):
    """Stream event (StreamEvent)

    Properties:
        body: (body) OPTIONAL StreamEventBody

        event_domain: (eventDomain) OPTIONAL str

        event_source: (eventSource) OPTIONAL str

        event_type: (eventType) OPTIONAL str

        event_version: (eventVersion) OPTIONAL int

        id_: (id) OPTIONAL str

        timestamp: (timestamp) OPTIONAL str
    """

    # region fields

    body: StreamEventBody  # OPTIONAL
    event_domain: str  # OPTIONAL
    event_source: str  # OPTIONAL
    event_type: str  # OPTIONAL
    event_version: int  # OPTIONAL
    id_: str  # OPTIONAL
    timestamp: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_body(self, value: StreamEventBody) -> StreamEvent:
        self.body = value
        return self

    def with_event_domain(self, value: str) -> StreamEvent:
        self.event_domain = value
        return self

    def with_event_source(self, value: str) -> StreamEvent:
        self.event_source = value
        return self

    def with_event_type(self, value: str) -> StreamEvent:
        self.event_type = value
        return self

    def with_event_version(self, value: int) -> StreamEvent:
        self.event_version = value
        return self

    def with_id(self, value: str) -> StreamEvent:
        self.id_ = value
        return self

    def with_timestamp(self, value: str) -> StreamEvent:
        self.timestamp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body"):
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = StreamEventBody()
        if hasattr(self, "event_domain"):
            result["eventDomain"] = str(self.event_domain)
        elif include_empty:
            result["eventDomain"] = ""
        if hasattr(self, "event_source"):
            result["eventSource"] = str(self.event_source)
        elif include_empty:
            result["eventSource"] = ""
        if hasattr(self, "event_type"):
            result["eventType"] = str(self.event_type)
        elif include_empty:
            result["eventType"] = ""
        if hasattr(self, "event_version"):
            result["eventVersion"] = int(self.event_version)
        elif include_empty:
            result["eventVersion"] = 0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: Optional[StreamEventBody] = None,
        event_domain: Optional[str] = None,
        event_source: Optional[str] = None,
        event_type: Optional[str] = None,
        event_version: Optional[int] = None,
        id_: Optional[str] = None,
        timestamp: Optional[str] = None,
        **kwargs,
    ) -> StreamEvent:
        instance = cls()
        if body is not None:
            instance.body = body
        if event_domain is not None:
            instance.event_domain = event_domain
        if event_source is not None:
            instance.event_source = event_source
        if event_type is not None:
            instance.event_type = event_type
        if event_version is not None:
            instance.event_version = event_version
        if id_ is not None:
            instance.id_ = id_
        if timestamp is not None:
            instance.timestamp = timestamp
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StreamEvent:
        instance = cls()
        if not dict_:
            return instance
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = StreamEventBody.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = StreamEventBody()
        if "eventDomain" in dict_ and dict_["eventDomain"] is not None:
            instance.event_domain = str(dict_["eventDomain"])
        elif include_empty:
            instance.event_domain = ""
        if "eventSource" in dict_ and dict_["eventSource"] is not None:
            instance.event_source = str(dict_["eventSource"])
        elif include_empty:
            instance.event_source = ""
        if "eventType" in dict_ and dict_["eventType"] is not None:
            instance.event_type = str(dict_["eventType"])
        elif include_empty:
            instance.event_type = ""
        if "eventVersion" in dict_ and dict_["eventVersion"] is not None:
            instance.event_version = int(dict_["eventVersion"])
        elif include_empty:
            instance.event_version = 0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StreamEvent]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StreamEvent]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StreamEvent, List[StreamEvent], Dict[Any, StreamEvent]]:
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
            "body": "body",
            "eventDomain": "event_domain",
            "eventSource": "event_source",
            "eventType": "event_type",
            "eventVersion": "event_version",
            "id": "id_",
            "timestamp": "timestamp",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "eventDomain": False,
            "eventSource": False,
            "eventType": False,
            "eventVersion": False,
            "id": False,
            "timestamp": False,
        }

    # endregion static methods
