# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Gdpr Service

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
    CANCELED = "Canceled"
    COMPLETED = "Completed"
    FAILED = "Failed"
    IN_PROGRESS = "In-Progress"
    PENDING = "Pending"


class DtoS2SDataRequestSummary(Model):
    """Dto S2S data request summary (dto.S2SDataRequestSummary)

    Properties:
        status: (status) REQUIRED Union[str, StatusEnum]

        failed_message: (failedMessage) OPTIONAL str

        url: (url) OPTIONAL str
    """

    # region fields

    status: Union[str, StatusEnum]  # REQUIRED
    failed_message: str  # OPTIONAL
    url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_status(self, value: Union[str, StatusEnum]) -> DtoS2SDataRequestSummary:
        self.status = value
        return self

    def with_failed_message(self, value: str) -> DtoS2SDataRequestSummary:
        self.failed_message = value
        return self

    def with_url(self, value: str) -> DtoS2SDataRequestSummary:
        self.url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "failed_message"):
            result["failedMessage"] = str(self.failed_message)
        elif include_empty:
            result["failedMessage"] = ""
        if hasattr(self, "url"):
            result["url"] = str(self.url)
        elif include_empty:
            result["url"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        status: Union[str, StatusEnum],
        failed_message: Optional[str] = None,
        url: Optional[str] = None,
        **kwargs,
    ) -> DtoS2SDataRequestSummary:
        instance = cls()
        instance.status = status
        if failed_message is not None:
            instance.failed_message = failed_message
        if url is not None:
            instance.url = url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoS2SDataRequestSummary:
        instance = cls()
        if not dict_:
            return instance
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "failedMessage" in dict_ and dict_["failedMessage"] is not None:
            instance.failed_message = str(dict_["failedMessage"])
        elif include_empty:
            instance.failed_message = ""
        if "url" in dict_ and dict_["url"] is not None:
            instance.url = str(dict_["url"])
        elif include_empty:
            instance.url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DtoS2SDataRequestSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoS2SDataRequestSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoS2SDataRequestSummary,
        List[DtoS2SDataRequestSummary],
        Dict[Any, DtoS2SDataRequestSummary],
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
            "status": "status",
            "failedMessage": "failed_message",
            "url": "url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "status": True,
            "failedMessage": False,
            "url": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["Canceled", "Completed", "Failed", "In-Progress", "Pending"],
        }

    # endregion static methods
