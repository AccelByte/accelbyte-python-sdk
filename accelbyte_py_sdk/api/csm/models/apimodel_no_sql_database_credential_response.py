# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelNoSQLDatabaseCredentialResponse(Model):
    """Apimodel no SQL database credential response (apimodel.NoSQLDatabaseCredentialResponse)

    Properties:
        created_at: (createdAt) REQUIRED str

        owner: (owner) REQUIRED str

        username: (username) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    owner: str  # REQUIRED
    username: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApimodelNoSQLDatabaseCredentialResponse:
        self.created_at = value
        return self

    def with_owner(self, value: str) -> ApimodelNoSQLDatabaseCredentialResponse:
        self.owner = value
        return self

    def with_username(self, value: str) -> ApimodelNoSQLDatabaseCredentialResponse:
        self.username = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "owner"):
            result["owner"] = str(self.owner)
        elif include_empty:
            result["owner"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, created_at: str, owner: str, username: str, **kwargs
    ) -> ApimodelNoSQLDatabaseCredentialResponse:
        instance = cls()
        instance.created_at = created_at
        instance.owner = owner
        instance.username = username
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelNoSQLDatabaseCredentialResponse:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "owner" in dict_ and dict_["owner"] is not None:
            instance.owner = str(dict_["owner"])
        elif include_empty:
            instance.owner = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelNoSQLDatabaseCredentialResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelNoSQLDatabaseCredentialResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelNoSQLDatabaseCredentialResponse,
        List[ApimodelNoSQLDatabaseCredentialResponse],
        Dict[Any, ApimodelNoSQLDatabaseCredentialResponse],
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
            "createdAt": "created_at",
            "owner": "owner",
            "username": "username",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "owner": True,
            "username": True,
        }

    # endregion static methods
