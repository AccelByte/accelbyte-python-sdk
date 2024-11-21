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
    COMPLETED = "Completed"
    FAILED = "Failed"


class DtoFinishedDataDeletion(Model):
    """Dto finished data deletion (dto.FinishedDataDeletion)

    Properties:
        finished_date: (finishedDate) REQUIRED str

        request_date: (requestDate) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        user_id: (userId) REQUIRED str

        failed_message: (failedMessage) OPTIONAL str
    """

    # region fields

    finished_date: str  # REQUIRED
    request_date: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    user_id: str  # REQUIRED
    failed_message: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_finished_date(self, value: str) -> DtoFinishedDataDeletion:
        self.finished_date = value
        return self

    def with_request_date(self, value: str) -> DtoFinishedDataDeletion:
        self.request_date = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> DtoFinishedDataDeletion:
        self.status = value
        return self

    def with_user_id(self, value: str) -> DtoFinishedDataDeletion:
        self.user_id = value
        return self

    def with_failed_message(self, value: str) -> DtoFinishedDataDeletion:
        self.failed_message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "finished_date"):
            result["finishedDate"] = str(self.finished_date)
        elif include_empty:
            result["finishedDate"] = ""
        if hasattr(self, "request_date"):
            result["requestDate"] = str(self.request_date)
        elif include_empty:
            result["requestDate"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "failed_message"):
            result["failedMessage"] = str(self.failed_message)
        elif include_empty:
            result["failedMessage"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        finished_date: str,
        request_date: str,
        status: Union[str, StatusEnum],
        user_id: str,
        failed_message: Optional[str] = None,
        **kwargs,
    ) -> DtoFinishedDataDeletion:
        instance = cls()
        instance.finished_date = finished_date
        instance.request_date = request_date
        instance.status = status
        instance.user_id = user_id
        if failed_message is not None:
            instance.failed_message = failed_message
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DtoFinishedDataDeletion:
        instance = cls()
        if not dict_:
            return instance
        if "finishedDate" in dict_ and dict_["finishedDate"] is not None:
            instance.finished_date = str(dict_["finishedDate"])
        elif include_empty:
            instance.finished_date = ""
        if "requestDate" in dict_ and dict_["requestDate"] is not None:
            instance.request_date = str(dict_["requestDate"])
        elif include_empty:
            instance.request_date = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "failedMessage" in dict_ and dict_["failedMessage"] is not None:
            instance.failed_message = str(dict_["failedMessage"])
        elif include_empty:
            instance.failed_message = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DtoFinishedDataDeletion]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DtoFinishedDataDeletion]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DtoFinishedDataDeletion,
        List[DtoFinishedDataDeletion],
        Dict[Any, DtoFinishedDataDeletion],
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
            "finishedDate": "finished_date",
            "requestDate": "request_date",
            "status": "status",
            "userId": "user_id",
            "failedMessage": "failed_message",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "finishedDate": True,
            "requestDate": True,
            "status": True,
            "userId": True,
            "failedMessage": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["Completed", "Failed"],
        }

    # endregion static methods
