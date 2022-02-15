# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.2.0)

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
    """

    # region fields

    domain: str                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_domain(self, value: str) -> ModelPlatformDomainDeleteRequest:
        self.domain = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "domain"):
            result["domain"] = str(self.domain)
        elif include_empty:
            result["domain"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        domain: str,
    ) -> ModelPlatformDomainDeleteRequest:
        instance = cls()
        instance.domain = domain
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelPlatformDomainDeleteRequest:
        instance = cls()
        if not dict_:
            return instance
        if "domain" in dict_ and dict_["domain"] is not None:
            instance.domain = str(dict_["domain"])
        elif include_empty:
            instance.domain = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelPlatformDomainDeleteRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelPlatformDomainDeleteRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelPlatformDomainDeleteRequest, List[ModelPlatformDomainDeleteRequest]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "domain": "domain",
        }

    # endregion static methods
