# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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


class ModelsUser(Model):
    """Models user (models.User)

    Properties:
        id_: (ID) REQUIRED str

        platform_id: (PlatformID) REQUIRED str

        platform_user_id: (PlatformUserID) REQUIRED str

        status: (Status) REQUIRED str

        status_v2: (StatusV2) REQUIRED str

        updated_at: (UpdatedAt) REQUIRED str

        previous_status: (PreviousStatus) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    platform_id: str  # REQUIRED
    platform_user_id: str  # REQUIRED
    status: str  # REQUIRED
    status_v2: str  # REQUIRED
    updated_at: str  # REQUIRED
    previous_status: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelsUser:
        self.id_ = value
        return self

    def with_platform_id(self, value: str) -> ModelsUser:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> ModelsUser:
        self.platform_user_id = value
        return self

    def with_status(self, value: str) -> ModelsUser:
        self.status = value
        return self

    def with_status_v2(self, value: str) -> ModelsUser:
        self.status_v2 = value
        return self

    def with_updated_at(self, value: str) -> ModelsUser:
        self.updated_at = value
        return self

    def with_previous_status(self, value: str) -> ModelsUser:
        self.previous_status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["ID"] = str(self.id_)
        elif include_empty:
            result["ID"] = ""
        if hasattr(self, "platform_id"):
            result["PlatformID"] = str(self.platform_id)
        elif include_empty:
            result["PlatformID"] = ""
        if hasattr(self, "platform_user_id"):
            result["PlatformUserID"] = str(self.platform_user_id)
        elif include_empty:
            result["PlatformUserID"] = ""
        if hasattr(self, "status"):
            result["Status"] = str(self.status)
        elif include_empty:
            result["Status"] = ""
        if hasattr(self, "status_v2"):
            result["StatusV2"] = str(self.status_v2)
        elif include_empty:
            result["StatusV2"] = ""
        if hasattr(self, "updated_at"):
            result["UpdatedAt"] = str(self.updated_at)
        elif include_empty:
            result["UpdatedAt"] = ""
        if hasattr(self, "previous_status"):
            result["PreviousStatus"] = str(self.previous_status)
        elif include_empty:
            result["PreviousStatus"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        platform_id: str,
        platform_user_id: str,
        status: str,
        status_v2: str,
        updated_at: str,
        previous_status: Optional[str] = None,
        **kwargs,
    ) -> ModelsUser:
        instance = cls()
        instance.id_ = id_
        instance.platform_id = platform_id
        instance.platform_user_id = platform_user_id
        instance.status = status
        instance.status_v2 = status_v2
        instance.updated_at = updated_at
        if previous_status is not None:
            instance.previous_status = previous_status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUser:
        instance = cls()
        if not dict_:
            return instance
        if "ID" in dict_ and dict_["ID"] is not None:
            instance.id_ = str(dict_["ID"])
        elif include_empty:
            instance.id_ = ""
        if "PlatformID" in dict_ and dict_["PlatformID"] is not None:
            instance.platform_id = str(dict_["PlatformID"])
        elif include_empty:
            instance.platform_id = ""
        if "PlatformUserID" in dict_ and dict_["PlatformUserID"] is not None:
            instance.platform_user_id = str(dict_["PlatformUserID"])
        elif include_empty:
            instance.platform_user_id = ""
        if "Status" in dict_ and dict_["Status"] is not None:
            instance.status = str(dict_["Status"])
        elif include_empty:
            instance.status = ""
        if "StatusV2" in dict_ and dict_["StatusV2"] is not None:
            instance.status_v2 = str(dict_["StatusV2"])
        elif include_empty:
            instance.status_v2 = ""
        if "UpdatedAt" in dict_ and dict_["UpdatedAt"] is not None:
            instance.updated_at = str(dict_["UpdatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "PreviousStatus" in dict_ and dict_["PreviousStatus"] is not None:
            instance.previous_status = str(dict_["PreviousStatus"])
        elif include_empty:
            instance.previous_status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUser]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUser]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsUser, List[ModelsUser], Dict[Any, ModelsUser]]:
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
            "ID": "id_",
            "PlatformID": "platform_id",
            "PlatformUserID": "platform_user_id",
            "Status": "status",
            "StatusV2": "status_v2",
            "UpdatedAt": "updated_at",
            "PreviousStatus": "previous_status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ID": True,
            "PlatformID": True,
            "PlatformUserID": True,
            "Status": True,
            "StatusV2": True,
            "UpdatedAt": True,
            "PreviousStatus": False,
        }

    # endregion static methods
