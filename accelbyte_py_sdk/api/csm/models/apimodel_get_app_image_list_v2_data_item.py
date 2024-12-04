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

from ..models.apimodel_get_app_image_list_v2_data_item_image_scan_result import (
    ApimodelGetAppImageListV2DataItemImageScanResult,
)
from ..models.apimodel_get_app_image_list_v2_data_item_image_scan_status import (
    ApimodelGetAppImageListV2DataItemImageScanStatus,
)


class ApimodelGetAppImageListV2DataItem(Model):
    """Apimodel get app image list V2 data item (apimodel.GetAppImageListV2DataItem)

    Properties:
        image_digest: (imageDigest) REQUIRED str

        image_tag: (imageTag) REQUIRED str

        size: (size) REQUIRED int

        image_scan_result: (imageScanResult) OPTIONAL ApimodelGetAppImageListV2DataItemImageScanResult

        image_scan_status: (imageScanStatus) OPTIONAL ApimodelGetAppImageListV2DataItemImageScanStatus

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    image_digest: str  # REQUIRED
    image_tag: str  # REQUIRED
    size: int  # REQUIRED
    image_scan_result: ApimodelGetAppImageListV2DataItemImageScanResult  # OPTIONAL
    image_scan_status: ApimodelGetAppImageListV2DataItemImageScanStatus  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_image_digest(self, value: str) -> ApimodelGetAppImageListV2DataItem:
        self.image_digest = value
        return self

    def with_image_tag(self, value: str) -> ApimodelGetAppImageListV2DataItem:
        self.image_tag = value
        return self

    def with_size(self, value: int) -> ApimodelGetAppImageListV2DataItem:
        self.size = value
        return self

    def with_image_scan_result(
        self, value: ApimodelGetAppImageListV2DataItemImageScanResult
    ) -> ApimodelGetAppImageListV2DataItem:
        self.image_scan_result = value
        return self

    def with_image_scan_status(
        self, value: ApimodelGetAppImageListV2DataItemImageScanStatus
    ) -> ApimodelGetAppImageListV2DataItem:
        self.image_scan_status = value
        return self

    def with_updated_at(self, value: str) -> ApimodelGetAppImageListV2DataItem:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "image_digest"):
            result["imageDigest"] = str(self.image_digest)
        elif include_empty:
            result["imageDigest"] = ""
        if hasattr(self, "image_tag"):
            result["imageTag"] = str(self.image_tag)
        elif include_empty:
            result["imageTag"] = ""
        if hasattr(self, "size"):
            result["size"] = int(self.size)
        elif include_empty:
            result["size"] = 0
        if hasattr(self, "image_scan_result"):
            result["imageScanResult"] = self.image_scan_result.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result[
                "imageScanResult"
            ] = ApimodelGetAppImageListV2DataItemImageScanResult()
        if hasattr(self, "image_scan_status"):
            result["imageScanStatus"] = self.image_scan_status.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result[
                "imageScanStatus"
            ] = ApimodelGetAppImageListV2DataItemImageScanStatus()
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
        image_digest: str,
        image_tag: str,
        size: int,
        image_scan_result: Optional[
            ApimodelGetAppImageListV2DataItemImageScanResult
        ] = None,
        image_scan_status: Optional[
            ApimodelGetAppImageListV2DataItemImageScanStatus
        ] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> ApimodelGetAppImageListV2DataItem:
        instance = cls()
        instance.image_digest = image_digest
        instance.image_tag = image_tag
        instance.size = size
        if image_scan_result is not None:
            instance.image_scan_result = image_scan_result
        if image_scan_status is not None:
            instance.image_scan_status = image_scan_status
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetAppImageListV2DataItem:
        instance = cls()
        if not dict_:
            return instance
        if "imageDigest" in dict_ and dict_["imageDigest"] is not None:
            instance.image_digest = str(dict_["imageDigest"])
        elif include_empty:
            instance.image_digest = ""
        if "imageTag" in dict_ and dict_["imageTag"] is not None:
            instance.image_tag = str(dict_["imageTag"])
        elif include_empty:
            instance.image_tag = ""
        if "size" in dict_ and dict_["size"] is not None:
            instance.size = int(dict_["size"])
        elif include_empty:
            instance.size = 0
        if "imageScanResult" in dict_ and dict_["imageScanResult"] is not None:
            instance.image_scan_result = (
                ApimodelGetAppImageListV2DataItemImageScanResult.create_from_dict(
                    dict_["imageScanResult"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.image_scan_result = (
                ApimodelGetAppImageListV2DataItemImageScanResult()
            )
        if "imageScanStatus" in dict_ and dict_["imageScanStatus"] is not None:
            instance.image_scan_status = (
                ApimodelGetAppImageListV2DataItemImageScanStatus.create_from_dict(
                    dict_["imageScanStatus"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.image_scan_status = (
                ApimodelGetAppImageListV2DataItemImageScanStatus()
            )
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelGetAppImageListV2DataItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetAppImageListV2DataItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetAppImageListV2DataItem,
        List[ApimodelGetAppImageListV2DataItem],
        Dict[Any, ApimodelGetAppImageListV2DataItem],
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
            "imageDigest": "image_digest",
            "imageTag": "image_tag",
            "size": "size",
            "imageScanResult": "image_scan_result",
            "imageScanStatus": "image_scan_status",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "imageDigest": True,
            "imageTag": True,
            "size": True,
            "imageScanResult": False,
            "imageScanStatus": False,
            "updatedAt": False,
        }

    # endregion static methods
