# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Dsm Controller Service

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


class ModelsImageRecordUpdate(Model):
    """Models image record update (models.ImageRecordUpdate)

    Properties:
        image: (image) REQUIRED str

        namespace: (namespace) REQUIRED str

        patch_version: (patchVersion) REQUIRED str

        persistent: (persistent) REQUIRED bool

        ulimit_file_size: (ulimitFileSize) REQUIRED int

        version: (version) REQUIRED str

        artifact_path: (artifactPath) OPTIONAL str

        core_dump_enabled: (coreDumpEnabled) OPTIONAL bool

        image_replications_map: (imageReplicationsMap) OPTIONAL Dict[str, ModelsImageReplication]
    """

    # region fields

    image: str  # REQUIRED
    namespace: str  # REQUIRED
    patch_version: str  # REQUIRED
    persistent: bool  # REQUIRED
    ulimit_file_size: int  # REQUIRED
    version: str  # REQUIRED
    artifact_path: str  # OPTIONAL
    core_dump_enabled: bool  # OPTIONAL
    image_replications_map: Dict[str, ModelsImageReplication]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_image(self, value: str) -> ModelsImageRecordUpdate:
        self.image = value
        return self

    def with_namespace(self, value: str) -> ModelsImageRecordUpdate:
        self.namespace = value
        return self

    def with_patch_version(self, value: str) -> ModelsImageRecordUpdate:
        self.patch_version = value
        return self

    def with_persistent(self, value: bool) -> ModelsImageRecordUpdate:
        self.persistent = value
        return self

    def with_ulimit_file_size(self, value: int) -> ModelsImageRecordUpdate:
        self.ulimit_file_size = value
        return self

    def with_version(self, value: str) -> ModelsImageRecordUpdate:
        self.version = value
        return self

    def with_artifact_path(self, value: str) -> ModelsImageRecordUpdate:
        self.artifact_path = value
        return self

    def with_core_dump_enabled(self, value: bool) -> ModelsImageRecordUpdate:
        self.core_dump_enabled = value
        return self

    def with_image_replications_map(
        self, value: Dict[str, ModelsImageReplication]
    ) -> ModelsImageRecordUpdate:
        self.image_replications_map = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "image"):
            result["image"] = str(self.image)
        elif include_empty:
            result["image"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "patch_version"):
            result["patchVersion"] = str(self.patch_version)
        elif include_empty:
            result["patchVersion"] = ""
        if hasattr(self, "persistent"):
            result["persistent"] = bool(self.persistent)
        elif include_empty:
            result["persistent"] = False
        if hasattr(self, "ulimit_file_size"):
            result["ulimitFileSize"] = int(self.ulimit_file_size)
        elif include_empty:
            result["ulimitFileSize"] = 0
        if hasattr(self, "version"):
            result["version"] = str(self.version)
        elif include_empty:
            result["version"] = ""
        if hasattr(self, "artifact_path"):
            result["artifactPath"] = str(self.artifact_path)
        elif include_empty:
            result["artifactPath"] = ""
        if hasattr(self, "core_dump_enabled"):
            result["coreDumpEnabled"] = bool(self.core_dump_enabled)
        elif include_empty:
            result["coreDumpEnabled"] = False
        if hasattr(self, "image_replications_map"):
            result["imageReplicationsMap"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.image_replications_map.items()
            }
        elif include_empty:
            result["imageReplicationsMap"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        image: str,
        namespace: str,
        patch_version: str,
        persistent: bool,
        ulimit_file_size: int,
        version: str,
        artifact_path: Optional[str] = None,
        core_dump_enabled: Optional[bool] = None,
        image_replications_map: Optional[Dict[str, ModelsImageReplication]] = None,
        **kwargs,
    ) -> ModelsImageRecordUpdate:
        instance = cls()
        instance.image = image
        instance.namespace = namespace
        instance.patch_version = patch_version
        instance.persistent = persistent
        instance.ulimit_file_size = ulimit_file_size
        instance.version = version
        if artifact_path is not None:
            instance.artifact_path = artifact_path
        if core_dump_enabled is not None:
            instance.core_dump_enabled = core_dump_enabled
        if image_replications_map is not None:
            instance.image_replications_map = image_replications_map
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsImageRecordUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "image" in dict_ and dict_["image"] is not None:
            instance.image = str(dict_["image"])
        elif include_empty:
            instance.image = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "patchVersion" in dict_ and dict_["patchVersion"] is not None:
            instance.patch_version = str(dict_["patchVersion"])
        elif include_empty:
            instance.patch_version = ""
        if "persistent" in dict_ and dict_["persistent"] is not None:
            instance.persistent = bool(dict_["persistent"])
        elif include_empty:
            instance.persistent = False
        if "ulimitFileSize" in dict_ and dict_["ulimitFileSize"] is not None:
            instance.ulimit_file_size = int(dict_["ulimitFileSize"])
        elif include_empty:
            instance.ulimit_file_size = 0
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = ""
        if "artifactPath" in dict_ and dict_["artifactPath"] is not None:
            instance.artifact_path = str(dict_["artifactPath"])
        elif include_empty:
            instance.artifact_path = ""
        if "coreDumpEnabled" in dict_ and dict_["coreDumpEnabled"] is not None:
            instance.core_dump_enabled = bool(dict_["coreDumpEnabled"])
        elif include_empty:
            instance.core_dump_enabled = False
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsImageRecordUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsImageRecordUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsImageRecordUpdate,
        List[ModelsImageRecordUpdate],
        Dict[Any, ModelsImageRecordUpdate],
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
            "image": "image",
            "namespace": "namespace",
            "patchVersion": "patch_version",
            "persistent": "persistent",
            "ulimitFileSize": "ulimit_file_size",
            "version": "version",
            "artifactPath": "artifact_path",
            "coreDumpEnabled": "core_dump_enabled",
            "imageReplicationsMap": "image_replications_map",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "image": True,
            "namespace": True,
            "patchVersion": True,
            "persistent": True,
            "ulimitFileSize": True,
            "version": True,
            "artifactPath": False,
            "coreDumpEnabled": False,
            "imageReplicationsMap": False,
        }

    # endregion static methods
