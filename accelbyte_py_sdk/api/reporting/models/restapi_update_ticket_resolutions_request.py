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


class StatusEnum(StrEnum):
    AUTO_MODERATED = "AUTO_MODERATED"
    CLOSED = "CLOSED"
    OPEN = "OPEN"
    UNKNOWN = "UNKNOWN"


class RestapiUpdateTicketResolutionsRequest(Model):
    """Restapi update ticket resolutions request (restapi.updateTicketResolutionsRequest)

    Properties:
        notes: (notes) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]
    """

    # region fields

    notes: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_notes(self, value: str) -> RestapiUpdateTicketResolutionsRequest:
        self.notes = value
        return self

    def with_status(
        self, value: Union[str, StatusEnum]
    ) -> RestapiUpdateTicketResolutionsRequest:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "notes"):
            result["notes"] = str(self.notes)
        elif include_empty:
            result["notes"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        notes: str,
        status: Union[str, StatusEnum],
    ) -> RestapiUpdateTicketResolutionsRequest:
        instance = cls()
        instance.notes = notes
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiUpdateTicketResolutionsRequest:
        instance = cls()
        if not dict_:
            return instance
        if "notes" in dict_ and dict_["notes"] is not None:
            instance.notes = str(dict_["notes"])
        elif include_empty:
            instance.notes = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiUpdateTicketResolutionsRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiUpdateTicketResolutionsRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiUpdateTicketResolutionsRequest,
        List[RestapiUpdateTicketResolutionsRequest],
        Dict[Any, RestapiUpdateTicketResolutionsRequest],
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
            "notes": "notes",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "notes": True,
            "status": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["AUTO_MODERATED", "CLOSED", "OPEN", "UNKNOWN"],
        }

    # endregion static methods
