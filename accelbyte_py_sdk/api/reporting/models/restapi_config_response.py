# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Reporting Service (0.1.23)

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

from ..models.restapi_reporting_limit import RestapiReportingLimit


class RestapiConfigResponse(Model):
    """Restapi config response (restapi.configResponse)

    Properties:
        namespace: (namespace) REQUIRED str

        reporting_limit: (reportingLimit) REQUIRED RestapiReportingLimit

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    namespace: str  # REQUIRED
    reporting_limit: RestapiReportingLimit  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> RestapiConfigResponse:
        self.namespace = value
        return self

    def with_reporting_limit(
        self, value: RestapiReportingLimit
    ) -> RestapiConfigResponse:
        self.reporting_limit = value
        return self

    def with_updated_at(self, value: str) -> RestapiConfigResponse:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "reporting_limit"):
            result["reportingLimit"] = self.reporting_limit.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["reportingLimit"] = RestapiReportingLimit()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        reporting_limit: RestapiReportingLimit,
        updated_at: str,
    ) -> RestapiConfigResponse:
        instance = cls()
        instance.namespace = namespace
        instance.reporting_limit = reporting_limit
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiConfigResponse:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "reportingLimit" in dict_ and dict_["reportingLimit"] is not None:
            instance.reporting_limit = RestapiReportingLimit.create_from_dict(
                dict_["reportingLimit"], include_empty=include_empty
            )
        elif include_empty:
            instance.reporting_limit = RestapiReportingLimit()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiConfigResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiConfigResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiConfigResponse,
        List[RestapiConfigResponse],
        Dict[Any, RestapiConfigResponse],
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
            "namespace": "namespace",
            "reportingLimit": "reporting_limit",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "reportingLimit": True,
            "updatedAt": True,
        }

    # endregion static methods
