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


class ApimodelGetDeploymentListV2DataItem(Model):
    """Apimodel get deployment list V2 data item (apimodel.GetDeploymentListV2DataItem)

    Properties:
        deployment_id: (deploymentId) REQUIRED str

        image_tag: (imageTag) REQUIRED str

        status: (status) REQUIRED str

        deleted_at: (deletedAt) OPTIONAL str

        message: (message) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str
    """

    # region fields

    deployment_id: str  # REQUIRED
    image_tag: str  # REQUIRED
    status: str  # REQUIRED
    deleted_at: str  # OPTIONAL
    message: str  # OPTIONAL
    updated_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_deployment_id(self, value: str) -> ApimodelGetDeploymentListV2DataItem:
        self.deployment_id = value
        return self

    def with_image_tag(self, value: str) -> ApimodelGetDeploymentListV2DataItem:
        self.image_tag = value
        return self

    def with_status(self, value: str) -> ApimodelGetDeploymentListV2DataItem:
        self.status = value
        return self

    def with_deleted_at(self, value: str) -> ApimodelGetDeploymentListV2DataItem:
        self.deleted_at = value
        return self

    def with_message(self, value: str) -> ApimodelGetDeploymentListV2DataItem:
        self.message = value
        return self

    def with_updated_at(self, value: str) -> ApimodelGetDeploymentListV2DataItem:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deployment_id"):
            result["deploymentId"] = str(self.deployment_id)
        elif include_empty:
            result["deploymentId"] = ""
        if hasattr(self, "image_tag"):
            result["imageTag"] = str(self.image_tag)
        elif include_empty:
            result["imageTag"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "deleted_at"):
            result["deletedAt"] = str(self.deleted_at)
        elif include_empty:
            result["deletedAt"] = ""
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
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
        deployment_id: str,
        image_tag: str,
        status: str,
        deleted_at: Optional[str] = None,
        message: Optional[str] = None,
        updated_at: Optional[str] = None,
        **kwargs,
    ) -> ApimodelGetDeploymentListV2DataItem:
        instance = cls()
        instance.deployment_id = deployment_id
        instance.image_tag = image_tag
        instance.status = status
        if deleted_at is not None:
            instance.deleted_at = deleted_at
        if message is not None:
            instance.message = message
        if updated_at is not None:
            instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetDeploymentListV2DataItem:
        instance = cls()
        if not dict_:
            return instance
        if "deploymentId" in dict_ and dict_["deploymentId"] is not None:
            instance.deployment_id = str(dict_["deploymentId"])
        elif include_empty:
            instance.deployment_id = ""
        if "imageTag" in dict_ and dict_["imageTag"] is not None:
            instance.image_tag = str(dict_["imageTag"])
        elif include_empty:
            instance.image_tag = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "deletedAt" in dict_ and dict_["deletedAt"] is not None:
            instance.deleted_at = str(dict_["deletedAt"])
        elif include_empty:
            instance.deleted_at = ""
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelGetDeploymentListV2DataItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetDeploymentListV2DataItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetDeploymentListV2DataItem,
        List[ApimodelGetDeploymentListV2DataItem],
        Dict[Any, ApimodelGetDeploymentListV2DataItem],
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
            "deploymentId": "deployment_id",
            "imageTag": "image_tag",
            "status": "status",
            "deletedAt": "deleted_at",
            "message": "message",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deploymentId": True,
            "imageTag": True,
            "status": True,
            "deletedAt": False,
            "message": False,
            "updatedAt": False,
        }

    # endregion static methods
