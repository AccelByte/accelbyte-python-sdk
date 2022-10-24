# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Legal Service (1.24.1)

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


class RetrieveUserInfoCacheStatusResponse(Model):
    """Retrieve user info cache status response (RetrieveUserInfoCacheStatusResponse)

    Properties:
        last_updated_at: (lastUpdatedAt) REQUIRED str

        namespace: (namespace) REQUIRED str
    """

    # region fields

    last_updated_at: str  # REQUIRED
    namespace: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_last_updated_at(self, value: str) -> RetrieveUserInfoCacheStatusResponse:
        self.last_updated_at = value
        return self

    def with_namespace(self, value: str) -> RetrieveUserInfoCacheStatusResponse:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "last_updated_at"):
            result["lastUpdatedAt"] = str(self.last_updated_at)
        elif include_empty:
            result["lastUpdatedAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        last_updated_at: str,
        namespace: str,
    ) -> RetrieveUserInfoCacheStatusResponse:
        instance = cls()
        instance.last_updated_at = last_updated_at
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RetrieveUserInfoCacheStatusResponse:
        instance = cls()
        if not dict_:
            return instance
        if "lastUpdatedAt" in dict_ and dict_["lastUpdatedAt"] is not None:
            instance.last_updated_at = str(dict_["lastUpdatedAt"])
        elif include_empty:
            instance.last_updated_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RetrieveUserInfoCacheStatusResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RetrieveUserInfoCacheStatusResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RetrieveUserInfoCacheStatusResponse,
        List[RetrieveUserInfoCacheStatusResponse],
        Dict[Any, RetrieveUserInfoCacheStatusResponse],
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
            "lastUpdatedAt": "last_updated_at",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "lastUpdatedAt": True,
            "namespace": True,
        }

    # endregion static methods
