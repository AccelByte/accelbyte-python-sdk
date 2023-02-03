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
from ....core import StrEnum


class CategoryEnum(StrEnum):
    CHAT = "CHAT"
    EXTENSION = "EXTENSION"
    UGC = "UGC"
    USER = "USER"


class RestapiSubmitReportRequest(Model):
    """Restapi submit report request (restapi.submitReportRequest)

    Properties:
        category: (category) REQUIRED Union[str, CategoryEnum]

        reason: (reason) REQUIRED str

        user_id: (userId) REQUIRED str

        additional_info: (additionalInfo) OPTIONAL Dict[str, Any]

        comment: (comment) OPTIONAL str

        extension_category: (extensionCategory) OPTIONAL str

        object_id: (objectId) OPTIONAL str

        object_type: (objectType) OPTIONAL str
    """

    # region fields

    category: Union[str, CategoryEnum]  # REQUIRED
    reason: str  # REQUIRED
    user_id: str  # REQUIRED
    additional_info: Dict[str, Any]  # OPTIONAL
    comment: str  # OPTIONAL
    extension_category: str  # OPTIONAL
    object_id: str  # OPTIONAL
    object_type: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_category(
        self, value: Union[str, CategoryEnum]
    ) -> RestapiSubmitReportRequest:
        self.category = value
        return self

    def with_reason(self, value: str) -> RestapiSubmitReportRequest:
        self.reason = value
        return self

    def with_user_id(self, value: str) -> RestapiSubmitReportRequest:
        self.user_id = value
        return self

    def with_additional_info(self, value: Dict[str, Any]) -> RestapiSubmitReportRequest:
        self.additional_info = value
        return self

    def with_comment(self, value: str) -> RestapiSubmitReportRequest:
        self.comment = value
        return self

    def with_extension_category(self, value: str) -> RestapiSubmitReportRequest:
        self.extension_category = value
        return self

    def with_object_id(self, value: str) -> RestapiSubmitReportRequest:
        self.object_id = value
        return self

    def with_object_type(self, value: str) -> RestapiSubmitReportRequest:
        self.object_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category"):
            result["category"] = str(self.category)
        elif include_empty:
            result["category"] = Union[str, CategoryEnum]()
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "additional_info"):
            result["additionalInfo"] = {
                str(k0): v0 for k0, v0 in self.additional_info.items()
            }
        elif include_empty:
            result["additionalInfo"] = {}
        if hasattr(self, "comment"):
            result["comment"] = str(self.comment)
        elif include_empty:
            result["comment"] = ""
        if hasattr(self, "extension_category"):
            result["extensionCategory"] = str(self.extension_category)
        elif include_empty:
            result["extensionCategory"] = ""
        if hasattr(self, "object_id"):
            result["objectId"] = str(self.object_id)
        elif include_empty:
            result["objectId"] = ""
        if hasattr(self, "object_type"):
            result["objectType"] = str(self.object_type)
        elif include_empty:
            result["objectType"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        category: Union[str, CategoryEnum],
        reason: str,
        user_id: str,
        additional_info: Optional[Dict[str, Any]] = None,
        comment: Optional[str] = None,
        extension_category: Optional[str] = None,
        object_id: Optional[str] = None,
        object_type: Optional[str] = None,
    ) -> RestapiSubmitReportRequest:
        instance = cls()
        instance.category = category
        instance.reason = reason
        instance.user_id = user_id
        if additional_info is not None:
            instance.additional_info = additional_info
        if comment is not None:
            instance.comment = comment
        if extension_category is not None:
            instance.extension_category = extension_category
        if object_id is not None:
            instance.object_id = object_id
        if object_type is not None:
            instance.object_type = object_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiSubmitReportRequest:
        instance = cls()
        if not dict_:
            return instance
        if "category" in dict_ and dict_["category"] is not None:
            instance.category = str(dict_["category"])
        elif include_empty:
            instance.category = Union[str, CategoryEnum]()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "additionalInfo" in dict_ and dict_["additionalInfo"] is not None:
            instance.additional_info = {
                str(k0): v0 for k0, v0 in dict_["additionalInfo"].items()
            }
        elif include_empty:
            instance.additional_info = {}
        if "comment" in dict_ and dict_["comment"] is not None:
            instance.comment = str(dict_["comment"])
        elif include_empty:
            instance.comment = ""
        if "extensionCategory" in dict_ and dict_["extensionCategory"] is not None:
            instance.extension_category = str(dict_["extensionCategory"])
        elif include_empty:
            instance.extension_category = ""
        if "objectId" in dict_ and dict_["objectId"] is not None:
            instance.object_id = str(dict_["objectId"])
        elif include_empty:
            instance.object_id = ""
        if "objectType" in dict_ and dict_["objectType"] is not None:
            instance.object_type = str(dict_["objectType"])
        elif include_empty:
            instance.object_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiSubmitReportRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiSubmitReportRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiSubmitReportRequest,
        List[RestapiSubmitReportRequest],
        Dict[Any, RestapiSubmitReportRequest],
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
            "category": "category",
            "reason": "reason",
            "userId": "user_id",
            "additionalInfo": "additional_info",
            "comment": "comment",
            "extensionCategory": "extension_category",
            "objectId": "object_id",
            "objectType": "object_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "category": True,
            "reason": True,
            "userId": True,
            "additionalInfo": False,
            "comment": False,
            "extensionCategory": False,
            "objectId": False,
            "objectType": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "category": ["CHAT", "EXTENSION", "UGC", "USER"],
        }

    # endregion static methods
