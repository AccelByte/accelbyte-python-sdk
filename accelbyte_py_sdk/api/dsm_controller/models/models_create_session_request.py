# Auto-generated at 2021-09-27T17:12:29.713386+08:00
# from: Justice DsmController Service (2.4.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.models_match_result import ModelsMatchResult


class ModelsCreateSessionRequest(Model):
    """Models create session request

    Properties:
        match_result: (MatchResult) REQUIRED ModelsMatchResult

        client_version: (client_version) REQUIRED str

        configuration: (configuration) REQUIRED str

        deployment: (deployment) REQUIRED str

        pod_name: (pod_name) REQUIRED str

        region: (region) REQUIRED str
    """

    # region fields

    match_result: ModelsMatchResult                                                                # REQUIRED
    client_version: str                                                                            # REQUIRED
    configuration: str                                                                             # REQUIRED
    deployment: str                                                                                # REQUIRED
    pod_name: str                                                                                  # REQUIRED
    region: str                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_match_result(self, value: ModelsMatchResult) -> ModelsCreateSessionRequest:
        self.match_result = value
        return self

    def with_client_version(self, value: str) -> ModelsCreateSessionRequest:
        self.client_version = value
        return self

    def with_configuration(self, value: str) -> ModelsCreateSessionRequest:
        self.configuration = value
        return self

    def with_deployment(self, value: str) -> ModelsCreateSessionRequest:
        self.deployment = value
        return self

    def with_pod_name(self, value: str) -> ModelsCreateSessionRequest:
        self.pod_name = value
        return self

    def with_region(self, value: str) -> ModelsCreateSessionRequest:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "match_result") and self.match_result:
            result["MatchResult"] = self.match_result.to_dict(include_empty=include_empty)
        elif include_empty:
            result["MatchResult"] = ModelsMatchResult()
        if hasattr(self, "client_version") and self.client_version:
            result["client_version"] = str(self.client_version)
        elif include_empty:
            result["client_version"] = str()
        if hasattr(self, "configuration") and self.configuration:
            result["configuration"] = str(self.configuration)
        elif include_empty:
            result["configuration"] = str()
        if hasattr(self, "deployment") and self.deployment:
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = str()
        if hasattr(self, "pod_name") and self.pod_name:
            result["pod_name"] = str(self.pod_name)
        elif include_empty:
            result["pod_name"] = str()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        match_result: ModelsMatchResult,
        client_version: str,
        configuration: str,
        deployment: str,
        pod_name: str,
        region: str,
    ) -> ModelsCreateSessionRequest:
        instance = cls()
        instance.match_result = match_result
        instance.client_version = client_version
        instance.configuration = configuration
        instance.deployment = deployment
        instance.pod_name = pod_name
        instance.region = region
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsCreateSessionRequest:
        instance = cls()
        if not dict_:
            return instance
        if "MatchResult" in dict_ and dict_["MatchResult"] is not None:
            instance.match_result = ModelsMatchResult.create_from_dict(dict_["MatchResult"], include_empty=include_empty)
        elif include_empty:
            instance.match_result = ModelsMatchResult()
        if "client_version" in dict_ and dict_["client_version"] is not None:
            instance.client_version = str(dict_["client_version"])
        elif include_empty:
            instance.client_version = str()
        if "configuration" in dict_ and dict_["configuration"] is not None:
            instance.configuration = str(dict_["configuration"])
        elif include_empty:
            instance.configuration = str()
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = str()
        if "pod_name" in dict_ and dict_["pod_name"] is not None:
            instance.pod_name = str(dict_["pod_name"])
        elif include_empty:
            instance.pod_name = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "MatchResult": "match_result",
            "client_version": "client_version",
            "configuration": "configuration",
            "deployment": "deployment",
            "pod_name": "pod_name",
            "region": "region",
        }

    # endregion static methods
