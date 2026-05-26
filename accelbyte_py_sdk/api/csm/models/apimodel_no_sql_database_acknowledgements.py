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


class ApimodelNoSQLDatabaseAcknowledgements(Model):
    """Apimodel no SQL database acknowledgements (apimodel.NoSQLDatabaseAcknowledgements)

    Properties:
        accept_nosql_secure_credential_handling: (acceptNosqlSecureCredentialHandling) REQUIRED bool
    """

    # region fields

    accept_nosql_secure_credential_handling: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_accept_nosql_secure_credential_handling(
        self, value: bool
    ) -> ApimodelNoSQLDatabaseAcknowledgements:
        self.accept_nosql_secure_credential_handling = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "accept_nosql_secure_credential_handling"):
            result["acceptNosqlSecureCredentialHandling"] = bool(
                self.accept_nosql_secure_credential_handling
            )
        elif include_empty:
            result["acceptNosqlSecureCredentialHandling"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, accept_nosql_secure_credential_handling: bool, **kwargs
    ) -> ApimodelNoSQLDatabaseAcknowledgements:
        instance = cls()
        instance.accept_nosql_secure_credential_handling = (
            accept_nosql_secure_credential_handling
        )
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelNoSQLDatabaseAcknowledgements:
        instance = cls()
        if not dict_:
            return instance
        if (
            "acceptNosqlSecureCredentialHandling" in dict_
            and dict_["acceptNosqlSecureCredentialHandling"] is not None
        ):
            instance.accept_nosql_secure_credential_handling = bool(
                dict_["acceptNosqlSecureCredentialHandling"]
            )
        elif include_empty:
            instance.accept_nosql_secure_credential_handling = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelNoSQLDatabaseAcknowledgements]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelNoSQLDatabaseAcknowledgements]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelNoSQLDatabaseAcknowledgements,
        List[ApimodelNoSQLDatabaseAcknowledgements],
        Dict[Any, ApimodelNoSQLDatabaseAcknowledgements],
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
            "acceptNosqlSecureCredentialHandling": "accept_nosql_secure_credential_handling",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "acceptNosqlSecureCredentialHandling": True,
        }

    # endregion static methods
