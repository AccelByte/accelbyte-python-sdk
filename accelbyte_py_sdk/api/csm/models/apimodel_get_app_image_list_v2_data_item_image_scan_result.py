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

from ..models.model_image_scan_finding import ModelImageScanFinding


class ApimodelGetAppImageListV2DataItemImageScanResult(Model):
    """Apimodel get app image list V2 data item image scan result (apimodel.GetAppImageListV2DataItemImageScanResult)

    Properties:
        finding_severity_counts: (findingSeverityCounts) REQUIRED Dict[str, int]

        findings: (findings) REQUIRED List[ModelImageScanFinding]
    """

    # region fields

    finding_severity_counts: Dict[str, int]  # REQUIRED
    findings: List[ModelImageScanFinding]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_finding_severity_counts(
        self, value: Dict[str, int]
    ) -> ApimodelGetAppImageListV2DataItemImageScanResult:
        self.finding_severity_counts = value
        return self

    def with_findings(
        self, value: List[ModelImageScanFinding]
    ) -> ApimodelGetAppImageListV2DataItemImageScanResult:
        self.findings = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "finding_severity_counts"):
            result["findingSeverityCounts"] = {
                str(k0): int(v0) for k0, v0 in self.finding_severity_counts.items()
            }
        elif include_empty:
            result["findingSeverityCounts"] = {}
        if hasattr(self, "findings"):
            result["findings"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.findings
            ]
        elif include_empty:
            result["findings"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        finding_severity_counts: Dict[str, int],
        findings: List[ModelImageScanFinding],
        **kwargs,
    ) -> ApimodelGetAppImageListV2DataItemImageScanResult:
        instance = cls()
        instance.finding_severity_counts = finding_severity_counts
        instance.findings = findings
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetAppImageListV2DataItemImageScanResult:
        instance = cls()
        if not dict_:
            return instance
        if (
            "findingSeverityCounts" in dict_
            and dict_["findingSeverityCounts"] is not None
        ):
            instance.finding_severity_counts = {
                str(k0): int(v0) for k0, v0 in dict_["findingSeverityCounts"].items()
            }
        elif include_empty:
            instance.finding_severity_counts = {}
        if "findings" in dict_ and dict_["findings"] is not None:
            instance.findings = [
                ModelImageScanFinding.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["findings"]
            ]
        elif include_empty:
            instance.findings = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelGetAppImageListV2DataItemImageScanResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetAppImageListV2DataItemImageScanResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetAppImageListV2DataItemImageScanResult,
        List[ApimodelGetAppImageListV2DataItemImageScanResult],
        Dict[Any, ApimodelGetAppImageListV2DataItemImageScanResult],
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
            "findingSeverityCounts": "finding_severity_counts",
            "findings": "findings",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "findingSeverityCounts": True,
            "findings": True,
        }

    # endregion static methods
