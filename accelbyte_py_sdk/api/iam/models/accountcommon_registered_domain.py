# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class AccountcommonRegisteredDomain(Model):
    """Accountcommon registered domain (accountcommon.RegisteredDomain)

    Properties:
        affected_client_i_ds: (affectedClientIDs) REQUIRED List[str]

        domain: (domain) REQUIRED str

        namespaces: (namespaces) REQUIRED List[str]

        role_id: (roleId) REQUIRED str
    """

    # region fields

    affected_client_i_ds: List[str]  # REQUIRED
    domain: str  # REQUIRED
    namespaces: List[str]  # REQUIRED
    role_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_affected_client_i_ds(
        self, value: List[str]
    ) -> AccountcommonRegisteredDomain:
        self.affected_client_i_ds = value
        return self

    def with_domain(self, value: str) -> AccountcommonRegisteredDomain:
        self.domain = value
        return self

    def with_namespaces(self, value: List[str]) -> AccountcommonRegisteredDomain:
        self.namespaces = value
        return self

    def with_role_id(self, value: str) -> AccountcommonRegisteredDomain:
        self.role_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "affected_client_i_ds"):
            result["affectedClientIDs"] = [str(i0) for i0 in self.affected_client_i_ds]
        elif include_empty:
            result["affectedClientIDs"] = []
        if hasattr(self, "domain"):
            result["domain"] = str(self.domain)
        elif include_empty:
            result["domain"] = ""
        if hasattr(self, "namespaces"):
            result["namespaces"] = [str(i0) for i0 in self.namespaces]
        elif include_empty:
            result["namespaces"] = []
        if hasattr(self, "role_id"):
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        affected_client_i_ds: List[str],
        domain: str,
        namespaces: List[str],
        role_id: str,
    ) -> AccountcommonRegisteredDomain:
        instance = cls()
        instance.affected_client_i_ds = affected_client_i_ds
        instance.domain = domain
        instance.namespaces = namespaces
        instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonRegisteredDomain:
        instance = cls()
        if not dict_:
            return instance
        if "affectedClientIDs" in dict_ and dict_["affectedClientIDs"] is not None:
            instance.affected_client_i_ds = [
                str(i0) for i0 in dict_["affectedClientIDs"]
            ]
        elif include_empty:
            instance.affected_client_i_ds = []
        if "domain" in dict_ and dict_["domain"] is not None:
            instance.domain = str(dict_["domain"])
        elif include_empty:
            instance.domain = ""
        if "namespaces" in dict_ and dict_["namespaces"] is not None:
            instance.namespaces = [str(i0) for i0 in dict_["namespaces"]]
        elif include_empty:
            instance.namespaces = []
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonRegisteredDomain]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonRegisteredDomain]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonRegisteredDomain,
        List[AccountcommonRegisteredDomain],
        Dict[Any, AccountcommonRegisteredDomain],
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
            "affectedClientIDs": "affected_client_i_ds",
            "domain": "domain",
            "namespaces": "namespaces",
            "roleId": "role_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "affectedClientIDs": True,
            "domain": True,
            "namespaces": True,
            "roleId": True,
        }

    # endregion static methods
