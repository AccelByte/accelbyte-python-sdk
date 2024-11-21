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

from ..models.xbl_clawback_contract_v2 import XblClawbackContractV2


class XblClawbackEvent(Model):
    """Xbl clawback event (XblClawbackEvent)

    Properties:
        data: (data) REQUIRED XblClawbackContractV2

        id_: (id) REQUIRED str

        source: (source) REQUIRED str

        type_: (type) REQUIRED str

        datacontenttype: (datacontenttype) OPTIONAL str

        spec_version: (specVersion) OPTIONAL str

        subject: (subject) OPTIONAL str

        time: (time) OPTIONAL str

        traceparent: (traceparent) OPTIONAL str
    """

    # region fields

    data: XblClawbackContractV2  # REQUIRED
    id_: str  # REQUIRED
    source: str  # REQUIRED
    type_: str  # REQUIRED
    datacontenttype: str  # OPTIONAL
    spec_version: str  # OPTIONAL
    subject: str  # OPTIONAL
    time: str  # OPTIONAL
    traceparent: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_data(self, value: XblClawbackContractV2) -> XblClawbackEvent:
        self.data = value
        return self

    def with_id(self, value: str) -> XblClawbackEvent:
        self.id_ = value
        return self

    def with_source(self, value: str) -> XblClawbackEvent:
        self.source = value
        return self

    def with_type(self, value: str) -> XblClawbackEvent:
        self.type_ = value
        return self

    def with_datacontenttype(self, value: str) -> XblClawbackEvent:
        self.datacontenttype = value
        return self

    def with_spec_version(self, value: str) -> XblClawbackEvent:
        self.spec_version = value
        return self

    def with_subject(self, value: str) -> XblClawbackEvent:
        self.subject = value
        return self

    def with_time(self, value: str) -> XblClawbackEvent:
        self.time = value
        return self

    def with_traceparent(self, value: str) -> XblClawbackEvent:
        self.traceparent = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = self.data.to_dict(include_empty=include_empty)
        elif include_empty:
            result["data"] = XblClawbackContractV2()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "datacontenttype"):
            result["datacontenttype"] = str(self.datacontenttype)
        elif include_empty:
            result["datacontenttype"] = ""
        if hasattr(self, "spec_version"):
            result["specVersion"] = str(self.spec_version)
        elif include_empty:
            result["specVersion"] = ""
        if hasattr(self, "subject"):
            result["subject"] = str(self.subject)
        elif include_empty:
            result["subject"] = ""
        if hasattr(self, "time"):
            result["time"] = str(self.time)
        elif include_empty:
            result["time"] = ""
        if hasattr(self, "traceparent"):
            result["traceparent"] = str(self.traceparent)
        elif include_empty:
            result["traceparent"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: XblClawbackContractV2,
        id_: str,
        source: str,
        type_: str,
        datacontenttype: Optional[str] = None,
        spec_version: Optional[str] = None,
        subject: Optional[str] = None,
        time: Optional[str] = None,
        traceparent: Optional[str] = None,
        **kwargs,
    ) -> XblClawbackEvent:
        instance = cls()
        instance.data = data
        instance.id_ = id_
        instance.source = source
        instance.type_ = type_
        if datacontenttype is not None:
            instance.datacontenttype = datacontenttype
        if spec_version is not None:
            instance.spec_version = spec_version
        if subject is not None:
            instance.subject = subject
        if time is not None:
            instance.time = time
        if traceparent is not None:
            instance.traceparent = traceparent
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XblClawbackEvent:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = XblClawbackContractV2.create_from_dict(
                dict_["data"], include_empty=include_empty
            )
        elif include_empty:
            instance.data = XblClawbackContractV2()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "datacontenttype" in dict_ and dict_["datacontenttype"] is not None:
            instance.datacontenttype = str(dict_["datacontenttype"])
        elif include_empty:
            instance.datacontenttype = ""
        if "specVersion" in dict_ and dict_["specVersion"] is not None:
            instance.spec_version = str(dict_["specVersion"])
        elif include_empty:
            instance.spec_version = ""
        if "subject" in dict_ and dict_["subject"] is not None:
            instance.subject = str(dict_["subject"])
        elif include_empty:
            instance.subject = ""
        if "time" in dict_ and dict_["time"] is not None:
            instance.time = str(dict_["time"])
        elif include_empty:
            instance.time = ""
        if "traceparent" in dict_ and dict_["traceparent"] is not None:
            instance.traceparent = str(dict_["traceparent"])
        elif include_empty:
            instance.traceparent = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XblClawbackEvent]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XblClawbackEvent]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[XblClawbackEvent, List[XblClawbackEvent], Dict[Any, XblClawbackEvent]]:
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
            "data": "data",
            "id": "id_",
            "source": "source",
            "type": "type_",
            "datacontenttype": "datacontenttype",
            "specVersion": "spec_version",
            "subject": "subject",
            "time": "time",
            "traceparent": "traceparent",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "data": True,
            "id": True,
            "source": True,
            "type": True,
            "datacontenttype": False,
            "specVersion": False,
            "subject": False,
            "time": False,
            "traceparent": False,
        }

    # endregion static methods
