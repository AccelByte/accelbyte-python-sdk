# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelPlatformDomainDeleteRequest(Model):
    """Model platform domain delete request (model.PlatformDomainDeleteRequest)

    Properties:
        domain: (domain) REQUIRED str

        sso_groups: (ssoGroups) REQUIRED List[str]
    """

    # region fields

    domain: str  # REQUIRED
    sso_groups: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_domain(self, value: str) -> ModelPlatformDomainDeleteRequest:
        self.domain = value
        return self

    def with_sso_groups(self, value: List[str]) -> ModelPlatformDomainDeleteRequest:
        self.sso_groups = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "domain"):
            result["domain"] = str(self.domain)
        elif include_empty:
            result["domain"] = ""
        if hasattr(self, "sso_groups"):
            result["ssoGroups"] = [str(i0) for i0 in self.sso_groups]
        elif include_empty:
            result["ssoGroups"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, domain: str, sso_groups: List[str], **kwargs
    ) -> ModelPlatformDomainDeleteRequest:
        instance = cls()
        instance.domain = domain
        instance.sso_groups = sso_groups
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPlatformDomainDeleteRequest:
        instance = cls()
        if not dict_:
            return instance
        if "domain" in dict_ and dict_["domain"] is not None:
            instance.domain = str(dict_["domain"])
        elif include_empty:
            instance.domain = ""
        if "ssoGroups" in dict_ and dict_["ssoGroups"] is not None:
            instance.sso_groups = [str(i0) for i0 in dict_["ssoGroups"]]
        elif include_empty:
            instance.sso_groups = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPlatformDomainDeleteRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPlatformDomainDeleteRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPlatformDomainDeleteRequest,
        List[ModelPlatformDomainDeleteRequest],
        Dict[Any, ModelPlatformDomainDeleteRequest],
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
            "domain": "domain",
            "ssoGroups": "sso_groups",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "domain": True,
            "ssoGroups": True,
        }

    # endregion static methods
