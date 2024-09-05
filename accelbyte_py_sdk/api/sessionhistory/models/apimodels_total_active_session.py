# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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


class ApimodelsTotalActiveSession(Model):
    """Apimodels total active session (apimodels.TotalActiveSession)

    Properties:
        created_at: (createdAt) OPTIONAL str

        match_pool: (matchPool) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        region: (region) OPTIONAL str

        value: (value) OPTIONAL int
    """

    # region fields

    created_at: str  # OPTIONAL
    match_pool: str  # OPTIONAL
    namespace: str  # OPTIONAL
    region: str  # OPTIONAL
    value: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApimodelsTotalActiveSession:
        self.created_at = value
        return self

    def with_match_pool(self, value: str) -> ApimodelsTotalActiveSession:
        self.match_pool = value
        return self

    def with_namespace(self, value: str) -> ApimodelsTotalActiveSession:
        self.namespace = value
        return self

    def with_region(self, value: str) -> ApimodelsTotalActiveSession:
        self.region = value
        return self

    def with_value(self, value: int) -> ApimodelsTotalActiveSession:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "match_pool"):
            result["matchPool"] = str(self.match_pool)
        elif include_empty:
            result["matchPool"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "value"):
            result["value"] = int(self.value)
        elif include_empty:
            result["value"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: Optional[str] = None,
        match_pool: Optional[str] = None,
        namespace: Optional[str] = None,
        region: Optional[str] = None,
        value: Optional[int] = None,
        **kwargs,
    ) -> ApimodelsTotalActiveSession:
        instance = cls()
        if created_at is not None:
            instance.created_at = created_at
        if match_pool is not None:
            instance.match_pool = match_pool
        if namespace is not None:
            instance.namespace = namespace
        if region is not None:
            instance.region = region
        if value is not None:
            instance.value = value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsTotalActiveSession:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = str(dict_["matchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = int(dict_["value"])
        elif include_empty:
            instance.value = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsTotalActiveSession]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsTotalActiveSession]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsTotalActiveSession,
        List[ApimodelsTotalActiveSession],
        Dict[Any, ApimodelsTotalActiveSession],
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
            "matchPool": "match_pool",
            "namespace": "namespace",
            "region": "region",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": False,
            "matchPool": False,
            "namespace": False,
            "region": False,
            "value": False,
        }

    # endregion static methods
