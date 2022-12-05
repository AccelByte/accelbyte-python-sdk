# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.22.0)

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

from ..models.accountcommon_registered_domain import AccountcommonRegisteredDomain


class ModelPlatformDomainResponse(Model):
    """Model platform domain response (model.PlatformDomainResponse)

    Properties:
        registered_domains: (registeredDomains) REQUIRED List[AccountcommonRegisteredDomain]
    """

    # region fields

    registered_domains: List[AccountcommonRegisteredDomain]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_registered_domains(
        self, value: List[AccountcommonRegisteredDomain]
    ) -> ModelPlatformDomainResponse:
        self.registered_domains = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "registered_domains"):
            result["registeredDomains"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.registered_domains
            ]
        elif include_empty:
            result["registeredDomains"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        registered_domains: List[AccountcommonRegisteredDomain],
    ) -> ModelPlatformDomainResponse:
        instance = cls()
        instance.registered_domains = registered_domains
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPlatformDomainResponse:
        instance = cls()
        if not dict_:
            return instance
        if "registeredDomains" in dict_ and dict_["registeredDomains"] is not None:
            instance.registered_domains = [
                AccountcommonRegisteredDomain.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["registeredDomains"]
            ]
        elif include_empty:
            instance.registered_domains = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPlatformDomainResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPlatformDomainResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelPlatformDomainResponse,
        List[ModelPlatformDomainResponse],
        Dict[Any, ModelPlatformDomainResponse],
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
            "registeredDomains": "registered_domains",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "registeredDomains": True,
        }

    # endregion static methods
