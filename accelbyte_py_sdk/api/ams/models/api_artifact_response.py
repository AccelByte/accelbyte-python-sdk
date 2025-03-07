# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiArtifactResponse(Model):
    """Api artifact response (api.ArtifactResponse)

    Properties:
        artifact_type: (artifactType) REQUIRED str

        created_on: (createdOn) REQUIRED str

        ds_id: (dsId) REQUIRED str

        expires_on: (expiresOn) REQUIRED str

        filename: (filename) REQUIRED str

        fleet_id: (fleetId) REQUIRED str

        id_: (id) REQUIRED str

        image_id: (imageId) REQUIRED str

        namespace: (namespace) REQUIRED str

        region: (region) REQUIRED str

        size_bytes: (sizeBytes) REQUIRED int

        status: (status) REQUIRED str

        reason: (reason) OPTIONAL str
    """

    # region fields

    artifact_type: str  # REQUIRED
    created_on: str  # REQUIRED
    ds_id: str  # REQUIRED
    expires_on: str  # REQUIRED
    filename: str  # REQUIRED
    fleet_id: str  # REQUIRED
    id_: str  # REQUIRED
    image_id: str  # REQUIRED
    namespace: str  # REQUIRED
    region: str  # REQUIRED
    size_bytes: int  # REQUIRED
    status: str  # REQUIRED
    reason: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_artifact_type(self, value: str) -> ApiArtifactResponse:
        self.artifact_type = value
        return self

    def with_created_on(self, value: str) -> ApiArtifactResponse:
        self.created_on = value
        return self

    def with_ds_id(self, value: str) -> ApiArtifactResponse:
        self.ds_id = value
        return self

    def with_expires_on(self, value: str) -> ApiArtifactResponse:
        self.expires_on = value
        return self

    def with_filename(self, value: str) -> ApiArtifactResponse:
        self.filename = value
        return self

    def with_fleet_id(self, value: str) -> ApiArtifactResponse:
        self.fleet_id = value
        return self

    def with_id(self, value: str) -> ApiArtifactResponse:
        self.id_ = value
        return self

    def with_image_id(self, value: str) -> ApiArtifactResponse:
        self.image_id = value
        return self

    def with_namespace(self, value: str) -> ApiArtifactResponse:
        self.namespace = value
        return self

    def with_region(self, value: str) -> ApiArtifactResponse:
        self.region = value
        return self

    def with_size_bytes(self, value: int) -> ApiArtifactResponse:
        self.size_bytes = value
        return self

    def with_status(self, value: str) -> ApiArtifactResponse:
        self.status = value
        return self

    def with_reason(self, value: str) -> ApiArtifactResponse:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "artifact_type"):
            result["artifactType"] = str(self.artifact_type)
        elif include_empty:
            result["artifactType"] = ""
        if hasattr(self, "created_on"):
            result["createdOn"] = str(self.created_on)
        elif include_empty:
            result["createdOn"] = ""
        if hasattr(self, "ds_id"):
            result["dsId"] = str(self.ds_id)
        elif include_empty:
            result["dsId"] = ""
        if hasattr(self, "expires_on"):
            result["expiresOn"] = str(self.expires_on)
        elif include_empty:
            result["expiresOn"] = ""
        if hasattr(self, "filename"):
            result["filename"] = str(self.filename)
        elif include_empty:
            result["filename"] = ""
        if hasattr(self, "fleet_id"):
            result["fleetId"] = str(self.fleet_id)
        elif include_empty:
            result["fleetId"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "image_id"):
            result["imageId"] = str(self.image_id)
        elif include_empty:
            result["imageId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "size_bytes"):
            result["sizeBytes"] = int(self.size_bytes)
        elif include_empty:
            result["sizeBytes"] = 0
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        artifact_type: str,
        created_on: str,
        ds_id: str,
        expires_on: str,
        filename: str,
        fleet_id: str,
        id_: str,
        image_id: str,
        namespace: str,
        region: str,
        size_bytes: int,
        status: str,
        reason: Optional[str] = None,
        **kwargs,
    ) -> ApiArtifactResponse:
        instance = cls()
        instance.artifact_type = artifact_type
        instance.created_on = created_on
        instance.ds_id = ds_id
        instance.expires_on = expires_on
        instance.filename = filename
        instance.fleet_id = fleet_id
        instance.id_ = id_
        instance.image_id = image_id
        instance.namespace = namespace
        instance.region = region
        instance.size_bytes = size_bytes
        instance.status = status
        if reason is not None:
            instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiArtifactResponse:
        instance = cls()
        if not dict_:
            return instance
        if "artifactType" in dict_ and dict_["artifactType"] is not None:
            instance.artifact_type = str(dict_["artifactType"])
        elif include_empty:
            instance.artifact_type = ""
        if "createdOn" in dict_ and dict_["createdOn"] is not None:
            instance.created_on = str(dict_["createdOn"])
        elif include_empty:
            instance.created_on = ""
        if "dsId" in dict_ and dict_["dsId"] is not None:
            instance.ds_id = str(dict_["dsId"])
        elif include_empty:
            instance.ds_id = ""
        if "expiresOn" in dict_ and dict_["expiresOn"] is not None:
            instance.expires_on = str(dict_["expiresOn"])
        elif include_empty:
            instance.expires_on = ""
        if "filename" in dict_ and dict_["filename"] is not None:
            instance.filename = str(dict_["filename"])
        elif include_empty:
            instance.filename = ""
        if "fleetId" in dict_ and dict_["fleetId"] is not None:
            instance.fleet_id = str(dict_["fleetId"])
        elif include_empty:
            instance.fleet_id = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "imageId" in dict_ and dict_["imageId"] is not None:
            instance.image_id = str(dict_["imageId"])
        elif include_empty:
            instance.image_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "sizeBytes" in dict_ and dict_["sizeBytes"] is not None:
            instance.size_bytes = int(dict_["sizeBytes"])
        elif include_empty:
            instance.size_bytes = 0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiArtifactResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiArtifactResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiArtifactResponse, List[ApiArtifactResponse], Dict[Any, ApiArtifactResponse]
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
            "artifactType": "artifact_type",
            "createdOn": "created_on",
            "dsId": "ds_id",
            "expiresOn": "expires_on",
            "filename": "filename",
            "fleetId": "fleet_id",
            "id": "id_",
            "imageId": "image_id",
            "namespace": "namespace",
            "region": "region",
            "sizeBytes": "size_bytes",
            "status": "status",
            "reason": "reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "artifactType": True,
            "createdOn": True,
            "dsId": True,
            "expiresOn": True,
            "filename": True,
            "fleetId": True,
            "id": True,
            "imageId": True,
            "namespace": True,
            "region": True,
            "sizeBytes": True,
            "status": True,
            "reason": False,
        }

    # endregion static methods
