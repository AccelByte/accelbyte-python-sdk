# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Gdpr Service (1.19.0)

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


class ModelsDeletionStatus(Model):
    """Models deletion status (models.DeletionStatus)

    Properties:
        deletion_status: (DeletionStatus) REQUIRED bool

        display_name: (DisplayName) REQUIRED str

        status: (Status) REQUIRED str

        user_id: (UserID) REQUIRED str

        execution_date: (ExecutionDate) OPTIONAL str
    """

    # region fields

    deletion_status: bool  # REQUIRED
    display_name: str  # REQUIRED
    status: str  # REQUIRED
    user_id: str  # REQUIRED
    execution_date: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_deletion_status(self, value: bool) -> ModelsDeletionStatus:
        self.deletion_status = value
        return self

    def with_display_name(self, value: str) -> ModelsDeletionStatus:
        self.display_name = value
        return self

    def with_status(self, value: str) -> ModelsDeletionStatus:
        self.status = value
        return self

    def with_user_id(self, value: str) -> ModelsDeletionStatus:
        self.user_id = value
        return self

    def with_execution_date(self, value: str) -> ModelsDeletionStatus:
        self.execution_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deletion_status"):
            result["DeletionStatus"] = bool(self.deletion_status)
        elif include_empty:
            result["DeletionStatus"] = False
        if hasattr(self, "display_name"):
            result["DisplayName"] = str(self.display_name)
        elif include_empty:
            result["DisplayName"] = ""
        if hasattr(self, "status"):
            result["Status"] = str(self.status)
        elif include_empty:
            result["Status"] = ""
        if hasattr(self, "user_id"):
            result["UserID"] = str(self.user_id)
        elif include_empty:
            result["UserID"] = ""
        if hasattr(self, "execution_date"):
            result["ExecutionDate"] = str(self.execution_date)
        elif include_empty:
            result["ExecutionDate"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        deletion_status: bool,
        display_name: str,
        status: str,
        user_id: str,
        execution_date: Optional[str] = None,
    ) -> ModelsDeletionStatus:
        instance = cls()
        instance.deletion_status = deletion_status
        instance.display_name = display_name
        instance.status = status
        instance.user_id = user_id
        if execution_date is not None:
            instance.execution_date = execution_date
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDeletionStatus:
        instance = cls()
        if not dict_:
            return instance
        if "DeletionStatus" in dict_ and dict_["DeletionStatus"] is not None:
            instance.deletion_status = bool(dict_["DeletionStatus"])
        elif include_empty:
            instance.deletion_status = False
        if "DisplayName" in dict_ and dict_["DisplayName"] is not None:
            instance.display_name = str(dict_["DisplayName"])
        elif include_empty:
            instance.display_name = ""
        if "Status" in dict_ and dict_["Status"] is not None:
            instance.status = str(dict_["Status"])
        elif include_empty:
            instance.status = ""
        if "UserID" in dict_ and dict_["UserID"] is not None:
            instance.user_id = str(dict_["UserID"])
        elif include_empty:
            instance.user_id = ""
        if "ExecutionDate" in dict_ and dict_["ExecutionDate"] is not None:
            instance.execution_date = str(dict_["ExecutionDate"])
        elif include_empty:
            instance.execution_date = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDeletionStatus]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDeletionStatus]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDeletionStatus,
        List[ModelsDeletionStatus],
        Dict[Any, ModelsDeletionStatus],
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
            "DeletionStatus": "deletion_status",
            "DisplayName": "display_name",
            "Status": "status",
            "UserID": "user_id",
            "ExecutionDate": "execution_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "DeletionStatus": True,
            "DisplayName": True,
            "Status": True,
            "UserID": True,
            "ExecutionDate": False,
        }

    # endregion static methods
