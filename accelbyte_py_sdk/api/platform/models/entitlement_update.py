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
from ....core import StrEnum


class OriginEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OCULUS = "Oculus"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    SYSTEM = "System"
    TWITCH = "Twitch"
    XBOX = "Xbox"


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    CONSUMED = "CONSUMED"
    INACTIVE = "INACTIVE"
    REVOKED = "REVOKED"
    SOLD = "SOLD"


class EntitlementUpdate(Model):
    """A DTO object for updating entitlement API call. Leave the field empty if don't want to update. (EntitlementUpdate)

    Properties:
        collection_id: (collectionId) OPTIONAL str

        end_date: (endDate) OPTIONAL str

        null_field_list: (nullFieldList) OPTIONAL List[str]

        origin: (origin) OPTIONAL Union[str, OriginEnum]

        reason: (reason) OPTIONAL str

        start_date: (startDate) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        use_count: (useCount) OPTIONAL int
    """

    # region fields

    collection_id: str  # OPTIONAL
    end_date: str  # OPTIONAL
    null_field_list: List[str]  # OPTIONAL
    origin: Union[str, OriginEnum]  # OPTIONAL
    reason: str  # OPTIONAL
    start_date: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    use_count: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_collection_id(self, value: str) -> EntitlementUpdate:
        self.collection_id = value
        return self

    def with_end_date(self, value: str) -> EntitlementUpdate:
        self.end_date = value
        return self

    def with_null_field_list(self, value: List[str]) -> EntitlementUpdate:
        self.null_field_list = value
        return self

    def with_origin(self, value: Union[str, OriginEnum]) -> EntitlementUpdate:
        self.origin = value
        return self

    def with_reason(self, value: str) -> EntitlementUpdate:
        self.reason = value
        return self

    def with_start_date(self, value: str) -> EntitlementUpdate:
        self.start_date = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> EntitlementUpdate:
        self.status = value
        return self

    def with_use_count(self, value: int) -> EntitlementUpdate:
        self.use_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "collection_id"):
            result["collectionId"] = str(self.collection_id)
        elif include_empty:
            result["collectionId"] = ""
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "null_field_list"):
            result["nullFieldList"] = [str(i0) for i0 in self.null_field_list]
        elif include_empty:
            result["nullFieldList"] = []
        if hasattr(self, "origin"):
            result["origin"] = str(self.origin)
        elif include_empty:
            result["origin"] = Union[str, OriginEnum]()
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "use_count"):
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        collection_id: Optional[str] = None,
        end_date: Optional[str] = None,
        null_field_list: Optional[List[str]] = None,
        origin: Optional[Union[str, OriginEnum]] = None,
        reason: Optional[str] = None,
        start_date: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        use_count: Optional[int] = None,
        **kwargs,
    ) -> EntitlementUpdate:
        instance = cls()
        if collection_id is not None:
            instance.collection_id = collection_id
        if end_date is not None:
            instance.end_date = end_date
        if null_field_list is not None:
            instance.null_field_list = null_field_list
        if origin is not None:
            instance.origin = origin
        if reason is not None:
            instance.reason = reason
        if start_date is not None:
            instance.start_date = start_date
        if status is not None:
            instance.status = status
        if use_count is not None:
            instance.use_count = use_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "collectionId" in dict_ and dict_["collectionId"] is not None:
            instance.collection_id = str(dict_["collectionId"])
        elif include_empty:
            instance.collection_id = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "nullFieldList" in dict_ and dict_["nullFieldList"] is not None:
            instance.null_field_list = [str(i0) for i0 in dict_["nullFieldList"]]
        elif include_empty:
            instance.null_field_list = []
        if "origin" in dict_ and dict_["origin"] is not None:
            instance.origin = str(dict_["origin"])
        elif include_empty:
            instance.origin = Union[str, OriginEnum]()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementUpdate, List[EntitlementUpdate], Dict[Any, EntitlementUpdate]
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
            "collectionId": "collection_id",
            "endDate": "end_date",
            "nullFieldList": "null_field_list",
            "origin": "origin",
            "reason": "reason",
            "startDate": "start_date",
            "status": "status",
            "useCount": "use_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "collectionId": False,
            "endDate": False,
            "nullFieldList": False,
            "origin": False,
            "reason": False,
            "startDate": False,
            "status": False,
            "useCount": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "origin": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Oculus",
                "Other",
                "Playstation",
                "Steam",
                "System",
                "Twitch",
                "Xbox",
            ],
            "status": ["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED", "SOLD"],
        }

    # endregion static methods
