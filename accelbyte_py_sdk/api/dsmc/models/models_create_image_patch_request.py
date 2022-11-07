# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Dsm Controller Service (3.10.1)

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


class ModelsCreateImagePatchRequest(Model):
    """Models create image patch request (models.CreateImagePatchRequest)

    Properties:
        artifact_path: (artifactPath) REQUIRED str

        docker_path: (dockerPath) REQUIRED str

        image: (image) REQUIRED str

        image_size: (imageSize) REQUIRED int

        namespace: (namespace) REQUIRED str

        patch_version: (patchVersion) REQUIRED str

        persistent: (persistent) REQUIRED bool

        version: (version) REQUIRED str
    """

    # region fields

    artifact_path: str  # REQUIRED
    docker_path: str  # REQUIRED
    image: str  # REQUIRED
    image_size: int  # REQUIRED
    namespace: str  # REQUIRED
    patch_version: str  # REQUIRED
    persistent: bool  # REQUIRED
    version: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_artifact_path(self, value: str) -> ModelsCreateImagePatchRequest:
        self.artifact_path = value
        return self

    def with_docker_path(self, value: str) -> ModelsCreateImagePatchRequest:
        self.docker_path = value
        return self

    def with_image(self, value: str) -> ModelsCreateImagePatchRequest:
        self.image = value
        return self

    def with_image_size(self, value: int) -> ModelsCreateImagePatchRequest:
        self.image_size = value
        return self

    def with_namespace(self, value: str) -> ModelsCreateImagePatchRequest:
        self.namespace = value
        return self

    def with_patch_version(self, value: str) -> ModelsCreateImagePatchRequest:
        self.patch_version = value
        return self

    def with_persistent(self, value: bool) -> ModelsCreateImagePatchRequest:
        self.persistent = value
        return self

    def with_version(self, value: str) -> ModelsCreateImagePatchRequest:
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
        if hasattr(self, "docker_path"):
            result["dockerPath"] = str(self.docker_path)
        elif include_empty:
            result["dockerPath"] = ""
        if hasattr(self, "image"):
            result["image"] = str(self.image)
        elif include_empty:
            result["image"] = ""
        if hasattr(self, "image_size"):
            result["imageSize"] = int(self.image_size)
        elif include_empty:
            result["imageSize"] = 0
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
        docker_path: str,
        image: str,
        image_size: int,
        namespace: str,
        patch_version: str,
        persistent: bool,
        version: str,
    ) -> ModelsCreateImagePatchRequest:
        instance = cls()
        instance.artifact_path = artifact_path
        instance.docker_path = docker_path
        instance.image = image
        instance.image_size = image_size
        instance.namespace = namespace
        instance.patch_version = patch_version
        instance.persistent = persistent
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreateImagePatchRequest:
        instance = cls()
        if not dict_:
            return instance
        if "artifactPath" in dict_ and dict_["artifactPath"] is not None:
            instance.artifact_path = str(dict_["artifactPath"])
        elif include_empty:
            instance.artifact_path = ""
        if "dockerPath" in dict_ and dict_["dockerPath"] is not None:
            instance.docker_path = str(dict_["dockerPath"])
        elif include_empty:
            instance.docker_path = ""
        if "image" in dict_ and dict_["image"] is not None:
            instance.image = str(dict_["image"])
        elif include_empty:
            instance.image = ""
        if "imageSize" in dict_ and dict_["imageSize"] is not None:
            instance.image_size = int(dict_["imageSize"])
        elif include_empty:
            instance.image_size = 0
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
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreateImagePatchRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreateImagePatchRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreateImagePatchRequest,
        List[ModelsCreateImagePatchRequest],
        Dict[Any, ModelsCreateImagePatchRequest],
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
            "dockerPath": "docker_path",
            "image": "image",
            "imageSize": "image_size",
            "namespace": "namespace",
            "patchVersion": "patch_version",
            "persistent": "persistent",
            "version": "version",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "artifactPath": True,
            "dockerPath": True,
            "image": True,
            "imageSize": True,
            "namespace": True,
            "patchVersion": True,
            "persistent": True,
            "version": True,
        }

    # endregion static methods
