# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Dsm Controller Service (6.4.3)

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

from ..models.models_image_replication import ModelsImageReplication


class ModelsImageRecord(Model):
    """Models image record (models.ImageRecord)

    Properties:
        artifact_path: (artifactPath) REQUIRED str

        core_dump_enabled: (coreDumpEnabled) REQUIRED bool

        created_at: (createdAt) REQUIRED str

        docker_path: (dockerPath) REQUIRED str

        image: (image) REQUIRED str

        image_replications: (imageReplications) REQUIRED List[ModelsImageReplication]

        image_replications_map: (imageReplicationsMap) REQUIRED Dict[str, ModelsImageReplication]

        image_size: (imageSize) REQUIRED int

        modified_by: (modifiedBy) REQUIRED str

        namespace: (namespace) REQUIRED str

        persistent: (persistent) REQUIRED bool

        ulimit_file_size: (ulimitFileSize) REQUIRED int

        updated_at: (updatedAt) REQUIRED str

        version: (version) REQUIRED str
    """

    # region fields

    artifact_path: str  # REQUIRED
    core_dump_enabled: bool  # REQUIRED
    created_at: str  # REQUIRED
    docker_path: str  # REQUIRED
    image: str  # REQUIRED
    image_replications: List[ModelsImageReplication]  # REQUIRED
    image_replications_map: Dict[str, ModelsImageReplication]  # REQUIRED
    image_size: int  # REQUIRED
    modified_by: str  # REQUIRED
    namespace: str  # REQUIRED
    persistent: bool  # REQUIRED
    ulimit_file_size: int  # REQUIRED
    updated_at: str  # REQUIRED
    version: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_artifact_path(self, value: str) -> ModelsImageRecord:
        self.artifact_path = value
        return self

    def with_core_dump_enabled(self, value: bool) -> ModelsImageRecord:
        self.core_dump_enabled = value
        return self

    def with_created_at(self, value: str) -> ModelsImageRecord:
        self.created_at = value
        return self

    def with_docker_path(self, value: str) -> ModelsImageRecord:
        self.docker_path = value
        return self

    def with_image(self, value: str) -> ModelsImageRecord:
        self.image = value
        return self

    def with_image_replications(
        self, value: List[ModelsImageReplication]
    ) -> ModelsImageRecord:
        self.image_replications = value
        return self

    def with_image_replications_map(
        self, value: Dict[str, ModelsImageReplication]
    ) -> ModelsImageRecord:
        self.image_replications_map = value
        return self

    def with_image_size(self, value: int) -> ModelsImageRecord:
        self.image_size = value
        return self

    def with_modified_by(self, value: str) -> ModelsImageRecord:
        self.modified_by = value
        return self

    def with_namespace(self, value: str) -> ModelsImageRecord:
        self.namespace = value
        return self

    def with_persistent(self, value: bool) -> ModelsImageRecord:
        self.persistent = value
        return self

    def with_ulimit_file_size(self, value: int) -> ModelsImageRecord:
        self.ulimit_file_size = value
        return self

    def with_updated_at(self, value: str) -> ModelsImageRecord:
        self.updated_at = value
        return self

    def with_version(self, value: str) -> ModelsImageRecord:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "artifact_path"):
            result["artifactPath"] = str(self.artifact_path)
        elif include_empty:
            result["artifactPath"] = ""
        if hasattr(self, "core_dump_enabled"):
            result["coreDumpEnabled"] = bool(self.core_dump_enabled)
        elif include_empty:
            result["coreDumpEnabled"] = False
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "docker_path"):
            result["dockerPath"] = str(self.docker_path)
        elif include_empty:
            result["dockerPath"] = ""
        if hasattr(self, "image"):
            result["image"] = str(self.image)
        elif include_empty:
            result["image"] = ""
        if hasattr(self, "image_replications"):
            result["imageReplications"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.image_replications
            ]
        elif include_empty:
            result["imageReplications"] = []
        if hasattr(self, "image_replications_map"):
            result["imageReplicationsMap"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.image_replications_map.items()
            }
        elif include_empty:
            result["imageReplicationsMap"] = {}
        if hasattr(self, "image_size"):
            result["imageSize"] = int(self.image_size)
        elif include_empty:
            result["imageSize"] = 0
        if hasattr(self, "modified_by"):
            result["modifiedBy"] = str(self.modified_by)
        elif include_empty:
            result["modifiedBy"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "persistent"):
            result["persistent"] = bool(self.persistent)
        elif include_empty:
            result["persistent"] = False
        if hasattr(self, "ulimit_file_size"):
            result["ulimitFileSize"] = int(self.ulimit_file_size)
        elif include_empty:
            result["ulimitFileSize"] = 0
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "version"):
            result["version"] = str(self.version)
        elif include_empty:
            result["version"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        artifact_path: str,
        core_dump_enabled: bool,
        created_at: str,
        docker_path: str,
        image: str,
        image_replications: List[ModelsImageReplication],
        image_replications_map: Dict[str, ModelsImageReplication],
        image_size: int,
        modified_by: str,
        namespace: str,
        persistent: bool,
        ulimit_file_size: int,
        updated_at: str,
        version: str,
        **kwargs,
    ) -> ModelsImageRecord:
        instance = cls()
        instance.artifact_path = artifact_path
        instance.core_dump_enabled = core_dump_enabled
        instance.created_at = created_at
        instance.docker_path = docker_path
        instance.image = image
        instance.image_replications = image_replications
        instance.image_replications_map = image_replications_map
        instance.image_size = image_size
        instance.modified_by = modified_by
        instance.namespace = namespace
        instance.persistent = persistent
        instance.ulimit_file_size = ulimit_file_size
        instance.updated_at = updated_at
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsImageRecord:
        instance = cls()
        if not dict_:
            return instance
        if "artifactPath" in dict_ and dict_["artifactPath"] is not None:
            instance.artifact_path = str(dict_["artifactPath"])
        elif include_empty:
            instance.artifact_path = ""
        if "coreDumpEnabled" in dict_ and dict_["coreDumpEnabled"] is not None:
            instance.core_dump_enabled = bool(dict_["coreDumpEnabled"])
        elif include_empty:
            instance.core_dump_enabled = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "dockerPath" in dict_ and dict_["dockerPath"] is not None:
            instance.docker_path = str(dict_["dockerPath"])
        elif include_empty:
            instance.docker_path = ""
        if "image" in dict_ and dict_["image"] is not None:
            instance.image = str(dict_["image"])
        elif include_empty:
            instance.image = ""
        if "imageReplications" in dict_ and dict_["imageReplications"] is not None:
            instance.image_replications = [
                ModelsImageReplication.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["imageReplications"]
            ]
        elif include_empty:
            instance.image_replications = []
        if (
            "imageReplicationsMap" in dict_
            and dict_["imageReplicationsMap"] is not None
        ):
            instance.image_replications_map = {
                str(k0): ModelsImageReplication.create_from_dict(
                    v0, include_empty=include_empty
                )
                for k0, v0 in dict_["imageReplicationsMap"].items()
            }
        elif include_empty:
            instance.image_replications_map = {}
        if "imageSize" in dict_ and dict_["imageSize"] is not None:
            instance.image_size = int(dict_["imageSize"])
        elif include_empty:
            instance.image_size = 0
        if "modifiedBy" in dict_ and dict_["modifiedBy"] is not None:
            instance.modified_by = str(dict_["modifiedBy"])
        elif include_empty:
            instance.modified_by = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "persistent" in dict_ and dict_["persistent"] is not None:
            instance.persistent = bool(dict_["persistent"])
        elif include_empty:
            instance.persistent = False
        if "ulimitFileSize" in dict_ and dict_["ulimitFileSize"] is not None:
            instance.ulimit_file_size = int(dict_["ulimitFileSize"])
        elif include_empty:
            instance.ulimit_file_size = 0
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsImageRecord]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsImageRecord]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsImageRecord, List[ModelsImageRecord], Dict[Any, ModelsImageRecord]
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
            "artifactPath": "artifact_path",
            "coreDumpEnabled": "core_dump_enabled",
            "createdAt": "created_at",
            "dockerPath": "docker_path",
            "image": "image",
            "imageReplications": "image_replications",
            "imageReplicationsMap": "image_replications_map",
            "imageSize": "image_size",
            "modifiedBy": "modified_by",
            "namespace": "namespace",
            "persistent": "persistent",
            "ulimitFileSize": "ulimit_file_size",
            "updatedAt": "updated_at",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "artifactPath": True,
            "coreDumpEnabled": True,
            "createdAt": True,
            "dockerPath": True,
            "image": True,
            "imageReplications": True,
            "imageReplicationsMap": True,
            "imageSize": True,
            "modifiedBy": True,
            "namespace": True,
            "persistent": True,
            "ulimitFileSize": True,
            "updatedAt": True,
            "version": True,
        }

    # endregion static methods
