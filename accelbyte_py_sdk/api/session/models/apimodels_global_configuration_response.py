# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ApimodelsGlobalConfigurationResponse(Model):
    """Apimodels global configuration response (apimodels.GlobalConfigurationResponse)

    Properties:
        region_retry_mapping: (regionRetryMapping) REQUIRED Dict[str, List[str]]

        region_url_mapping: (regionURLMapping) REQUIRED List[str]

        test_game_mode: (testGameMode) REQUIRED str

        test_region_url_mapping: (testRegionURLMapping) REQUIRED List[str]

        test_target_user_i_ds: (testTargetUserIDs) REQUIRED List[str]

        updated_at: (updatedAt) REQUIRED str

        metric_excluded_namespaces: (metricExcludedNamespaces) OPTIONAL List[str]
    """

    # region fields

    region_retry_mapping: Dict[str, List[str]]  # REQUIRED
    region_url_mapping: List[str]  # REQUIRED
    test_game_mode: str  # REQUIRED
    test_region_url_mapping: List[str]  # REQUIRED
    test_target_user_i_ds: List[str]  # REQUIRED
    updated_at: str  # REQUIRED
    metric_excluded_namespaces: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_region_retry_mapping(
        self, value: Dict[str, List[str]]
    ) -> ApimodelsGlobalConfigurationResponse:
        self.region_retry_mapping = value
        return self

    def with_region_url_mapping(
        self, value: List[str]
    ) -> ApimodelsGlobalConfigurationResponse:
        self.region_url_mapping = value
        return self

    def with_test_game_mode(self, value: str) -> ApimodelsGlobalConfigurationResponse:
        self.test_game_mode = value
        return self

    def with_test_region_url_mapping(
        self, value: List[str]
    ) -> ApimodelsGlobalConfigurationResponse:
        self.test_region_url_mapping = value
        return self

    def with_test_target_user_i_ds(
        self, value: List[str]
    ) -> ApimodelsGlobalConfigurationResponse:
        self.test_target_user_i_ds = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsGlobalConfigurationResponse:
        self.updated_at = value
        return self

    def with_metric_excluded_namespaces(
        self, value: List[str]
    ) -> ApimodelsGlobalConfigurationResponse:
        self.metric_excluded_namespaces = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "region_retry_mapping"):
            result["regionRetryMapping"] = {
                str(k0): [str(i1) for i1 in v0]
                for k0, v0 in self.region_retry_mapping.items()
            }
        elif include_empty:
            result["regionRetryMapping"] = {}
        if hasattr(self, "region_url_mapping"):
            result["regionURLMapping"] = [str(i0) for i0 in self.region_url_mapping]
        elif include_empty:
            result["regionURLMapping"] = []
        if hasattr(self, "test_game_mode"):
            result["testGameMode"] = str(self.test_game_mode)
        elif include_empty:
            result["testGameMode"] = ""
        if hasattr(self, "test_region_url_mapping"):
            result["testRegionURLMapping"] = [
                str(i0) for i0 in self.test_region_url_mapping
            ]
        elif include_empty:
            result["testRegionURLMapping"] = []
        if hasattr(self, "test_target_user_i_ds"):
            result["testTargetUserIDs"] = [str(i0) for i0 in self.test_target_user_i_ds]
        elif include_empty:
            result["testTargetUserIDs"] = []
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "metric_excluded_namespaces"):
            result["metricExcludedNamespaces"] = [
                str(i0) for i0 in self.metric_excluded_namespaces
            ]
        elif include_empty:
            result["metricExcludedNamespaces"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        region_retry_mapping: Dict[str, List[str]],
        region_url_mapping: List[str],
        test_game_mode: str,
        test_region_url_mapping: List[str],
        test_target_user_i_ds: List[str],
        updated_at: str,
        metric_excluded_namespaces: Optional[List[str]] = None,
        **kwargs,
    ) -> ApimodelsGlobalConfigurationResponse:
        instance = cls()
        instance.region_retry_mapping = region_retry_mapping
        instance.region_url_mapping = region_url_mapping
        instance.test_game_mode = test_game_mode
        instance.test_region_url_mapping = test_region_url_mapping
        instance.test_target_user_i_ds = test_target_user_i_ds
        instance.updated_at = updated_at
        if metric_excluded_namespaces is not None:
            instance.metric_excluded_namespaces = metric_excluded_namespaces
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsGlobalConfigurationResponse:
        instance = cls()
        if not dict_:
            return instance
        if "regionRetryMapping" in dict_ and dict_["regionRetryMapping"] is not None:
            instance.region_retry_mapping = {
                str(k0): [str(i1) for i1 in v0]
                for k0, v0 in dict_["regionRetryMapping"].items()
            }
        elif include_empty:
            instance.region_retry_mapping = {}
        if "regionURLMapping" in dict_ and dict_["regionURLMapping"] is not None:
            instance.region_url_mapping = [str(i0) for i0 in dict_["regionURLMapping"]]
        elif include_empty:
            instance.region_url_mapping = []
        if "testGameMode" in dict_ and dict_["testGameMode"] is not None:
            instance.test_game_mode = str(dict_["testGameMode"])
        elif include_empty:
            instance.test_game_mode = ""
        if (
            "testRegionURLMapping" in dict_
            and dict_["testRegionURLMapping"] is not None
        ):
            instance.test_region_url_mapping = [
                str(i0) for i0 in dict_["testRegionURLMapping"]
            ]
        elif include_empty:
            instance.test_region_url_mapping = []
        if "testTargetUserIDs" in dict_ and dict_["testTargetUserIDs"] is not None:
            instance.test_target_user_i_ds = [
                str(i0) for i0 in dict_["testTargetUserIDs"]
            ]
        elif include_empty:
            instance.test_target_user_i_ds = []
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if (
            "metricExcludedNamespaces" in dict_
            and dict_["metricExcludedNamespaces"] is not None
        ):
            instance.metric_excluded_namespaces = [
                str(i0) for i0 in dict_["metricExcludedNamespaces"]
            ]
        elif include_empty:
            instance.metric_excluded_namespaces = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsGlobalConfigurationResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsGlobalConfigurationResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsGlobalConfigurationResponse,
        List[ApimodelsGlobalConfigurationResponse],
        Dict[Any, ApimodelsGlobalConfigurationResponse],
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
            "regionRetryMapping": "region_retry_mapping",
            "regionURLMapping": "region_url_mapping",
            "testGameMode": "test_game_mode",
            "testRegionURLMapping": "test_region_url_mapping",
            "testTargetUserIDs": "test_target_user_i_ds",
            "updatedAt": "updated_at",
            "metricExcludedNamespaces": "metric_excluded_namespaces",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "regionRetryMapping": True,
            "regionURLMapping": True,
            "testGameMode": True,
            "testRegionURLMapping": True,
            "testTargetUserIDs": True,
            "updatedAt": True,
            "metricExcludedNamespaces": False,
        }

    # endregion static methods
