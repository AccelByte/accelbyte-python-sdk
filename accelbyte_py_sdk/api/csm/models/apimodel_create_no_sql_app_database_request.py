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


class ApimodelCreateNoSQLAppDatabaseRequest(Model):
    """Apimodel create no SQL app database request (apimodel.CreateNoSQLAppDatabaseRequest)

    Properties:
        db_name: (dbName) REQUIRED str

        password: (password) REQUIRED str

        username: (username) REQUIRED str
    """

    # region fields

    db_name: str  # REQUIRED
    password: str  # REQUIRED
    username: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_db_name(self, value: str) -> ApimodelCreateNoSQLAppDatabaseRequest:
        self.db_name = value
        return self

    def with_password(self, value: str) -> ApimodelCreateNoSQLAppDatabaseRequest:
        self.password = value
        return self

    def with_username(self, value: str) -> ApimodelCreateNoSQLAppDatabaseRequest:
        self.username = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "db_name"):
            result["dbName"] = str(self.db_name)
        elif include_empty:
            result["dbName"] = ""
        if hasattr(self, "password"):
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, db_name: str, password: str, username: str, **kwargs
    ) -> ApimodelCreateNoSQLAppDatabaseRequest:
        instance = cls()
        instance.db_name = db_name
        instance.password = password
        instance.username = username
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelCreateNoSQLAppDatabaseRequest:
        instance = cls()
        if not dict_:
            return instance
        if "dbName" in dict_ and dict_["dbName"] is not None:
            instance.db_name = str(dict_["dbName"])
        elif include_empty:
            instance.db_name = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelCreateNoSQLAppDatabaseRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelCreateNoSQLAppDatabaseRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelCreateNoSQLAppDatabaseRequest,
        List[ApimodelCreateNoSQLAppDatabaseRequest],
        Dict[Any, ApimodelCreateNoSQLAppDatabaseRequest],
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
            "dbName": "db_name",
            "password": "password",
            "username": "username",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "dbName": True,
            "password": True,
            "username": True,
        }

    # endregion static methods
