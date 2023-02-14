# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Session Service (2.6.1)

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


class ApimodelsUserResponse(Model):
    """Apimodels user response (apimodels.UserResponse)

    Properties:
        id_: (id) REQUIRED str

        platform_id: (platformID) REQUIRED str

        platform_user_id: (platformUserID) REQUIRED str

        status: (status) REQUIRED str

        status_v2: (statusV2) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    id_: str  # REQUIRED
    platform_id: str  # REQUIRED
    platform_user_id: str  # REQUIRED
    status: str  # REQUIRED
    status_v2: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ApimodelsUserResponse:
        self.id_ = value
        return self

    def with_platform_id(self, value: str) -> ApimodelsUserResponse:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> ApimodelsUserResponse:
        self.platform_user_id = value
        return self

    def with_status(self, value: str) -> ApimodelsUserResponse:
        self.status = value
        return self

    def with_status_v2(self, value: str) -> ApimodelsUserResponse:
        self.status_v2 = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsUserResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "platform_id"):
            result["platformID"] = str(self.platform_id)
        elif include_empty:
            result["platformID"] = ""
        if hasattr(self, "platform_user_id"):
            result["platformUserID"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserID"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "status_v2"):
            result["statusV2"] = str(self.status_v2)
        elif include_empty:
            result["statusV2"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
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
    ) -> ApimodelsUserResponse:
        instance = cls()
        instance.id_ = id_
        instance.platform_id = platform_id
        instance.platform_user_id = platform_user_id
        instance.status = status
        instance.status_v2 = status_v2
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsUserResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "platformID" in dict_ and dict_["platformID"] is not None:
            instance.platform_id = str(dict_["platformID"])
        elif include_empty:
            instance.platform_id = ""
        if "platformUserID" in dict_ and dict_["platformUserID"] is not None:
            instance.platform_user_id = str(dict_["platformUserID"])
        elif include_empty:
            instance.platform_user_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "statusV2" in dict_ and dict_["statusV2"] is not None:
            instance.status_v2 = str(dict_["statusV2"])
        elif include_empty:
            instance.status_v2 = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsUserResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsUserResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsUserResponse,
        List[ApimodelsUserResponse],
        Dict[Any, ApimodelsUserResponse],
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
            "id": "id_",
            "platformID": "platform_id",
            "platformUserID": "platform_user_id",
            "status": "status",
            "statusV2": "status_v2",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "platformID": True,
            "platformUserID": True,
            "status": True,
            "statusV2": True,
            "updatedAt": True,
        }

    # endregion static methods
