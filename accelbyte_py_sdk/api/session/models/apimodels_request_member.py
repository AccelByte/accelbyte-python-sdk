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


class ApimodelsRequestMember(Model):
    """Apimodels request member (apimodels.RequestMember)

    Properties:
        id_: (ID) REQUIRED str

        platform_id: (PlatformID) REQUIRED str

        platform_user_id: (PlatformUserID) REQUIRED str
    """

    # region fields

    id_: str  # REQUIRED
    platform_id: str  # REQUIRED
    platform_user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ApimodelsRequestMember:
        self.id_ = value
        return self

    def with_platform_id(self, value: str) -> ApimodelsRequestMember:
        self.platform_id = value
        return self

    def with_platform_user_id(self, value: str) -> ApimodelsRequestMember:
        self.platform_user_id = value
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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        platform_id: str,
        platform_user_id: str,
    ) -> ApimodelsRequestMember:
        instance = cls()
        instance.id_ = id_
        instance.platform_id = platform_id
        instance.platform_user_id = platform_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsRequestMember:
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsRequestMember]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsRequestMember]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsRequestMember,
        List[ApimodelsRequestMember],
        Dict[Any, ApimodelsRequestMember],
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
            "ID": "id_",
            "PlatformID": "platform_id",
            "PlatformUserID": "platform_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ID": True,
            "PlatformID": True,
            "PlatformUserID": True,
        }

    # endregion static methods
