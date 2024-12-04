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


class ApimodelGetDeploymentListV2Request(Model):
    """Apimodel get deployment list V2 request (apimodel.GetDeploymentListV2Request)

    Properties:
        app_ids: (appIds) OPTIONAL List[str]

        deployment_ids: (deploymentIds) OPTIONAL List[str]

        statuses: (statuses) OPTIONAL List[str]
    """

    # region fields

    app_ids: List[str]  # OPTIONAL
    deployment_ids: List[str]  # OPTIONAL
    statuses: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_ids(self, value: List[str]) -> ApimodelGetDeploymentListV2Request:
        self.app_ids = value
        return self

    def with_deployment_ids(
        self, value: List[str]
    ) -> ApimodelGetDeploymentListV2Request:
        self.deployment_ids = value
        return self

    def with_statuses(self, value: List[str]) -> ApimodelGetDeploymentListV2Request:
        self.statuses = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_ids"):
            result["appIds"] = [str(i0) for i0 in self.app_ids]
        elif include_empty:
            result["appIds"] = []
        if hasattr(self, "deployment_ids"):
            result["deploymentIds"] = [str(i0) for i0 in self.deployment_ids]
        elif include_empty:
            result["deploymentIds"] = []
        if hasattr(self, "statuses"):
            result["statuses"] = [str(i0) for i0 in self.statuses]
        elif include_empty:
            result["statuses"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_ids: Optional[List[str]] = None,
        deployment_ids: Optional[List[str]] = None,
        statuses: Optional[List[str]] = None,
        **kwargs,
    ) -> ApimodelGetDeploymentListV2Request:
        instance = cls()
        if app_ids is not None:
            instance.app_ids = app_ids
        if deployment_ids is not None:
            instance.deployment_ids = deployment_ids
        if statuses is not None:
            instance.statuses = statuses
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetDeploymentListV2Request:
        instance = cls()
        if not dict_:
            return instance
        if "appIds" in dict_ and dict_["appIds"] is not None:
            instance.app_ids = [str(i0) for i0 in dict_["appIds"]]
        elif include_empty:
            instance.app_ids = []
        if "deploymentIds" in dict_ and dict_["deploymentIds"] is not None:
            instance.deployment_ids = [str(i0) for i0 in dict_["deploymentIds"]]
        elif include_empty:
            instance.deployment_ids = []
        if "statuses" in dict_ and dict_["statuses"] is not None:
            instance.statuses = [str(i0) for i0 in dict_["statuses"]]
        elif include_empty:
            instance.statuses = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelGetDeploymentListV2Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetDeploymentListV2Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetDeploymentListV2Request,
        List[ApimodelGetDeploymentListV2Request],
        Dict[Any, ApimodelGetDeploymentListV2Request],
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
            "appIds": "app_ids",
            "deploymentIds": "deployment_ids",
            "statuses": "statuses",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "appIds": False,
            "deploymentIds": False,
            "statuses": False,
        }

    # endregion static methods
