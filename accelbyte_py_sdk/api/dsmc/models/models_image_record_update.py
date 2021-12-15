# justice-dsm-controller-service (2.10.0)

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


class ModelsImageRecordUpdate(Model):
    """Models image record update (models.ImageRecordUpdate)

    Properties:
        artifact_path: (artifactPath) REQUIRED str

        image: (image) REQUIRED str

        namespace: (namespace) REQUIRED str

        persistent: (persistent) REQUIRED bool

        version: (version) REQUIRED str
    """

    # region fields

    artifact_path: str                                                                             # REQUIRED
    image: str                                                                                     # REQUIRED
    namespace: str                                                                                 # REQUIRED
    persistent: bool                                                                               # REQUIRED
    version: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_artifact_path(self, value: str) -> ModelsImageRecordUpdate:
        self.artifact_path = value
        return self

    def with_image(self, value: str) -> ModelsImageRecordUpdate:
        self.image = value
        return self

    def with_namespace(self, value: str) -> ModelsImageRecordUpdate:
        self.namespace = value
        return self

    def with_persistent(self, value: bool) -> ModelsImageRecordUpdate:
        self.persistent = value
        return self

    def with_version(self, value: str) -> ModelsImageRecordUpdate:
        self.version = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "artifact_path"):
            result["artifactPath"] = str(self.artifact_path)
        elif include_empty:
            result["artifactPath"] = str()
        if hasattr(self, "image"):
            result["image"] = str(self.image)
        elif include_empty:
            result["image"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "persistent"):
            result["persistent"] = bool(self.persistent)
        elif include_empty:
            result["persistent"] = bool()
        if hasattr(self, "version"):
            result["version"] = str(self.version)
        elif include_empty:
            result["version"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        artifact_path: str,
        image: str,
        namespace: str,
        persistent: bool,
        version: str,
    ) -> ModelsImageRecordUpdate:
        instance = cls()
        instance.artifact_path = artifact_path
        instance.image = image
        instance.namespace = namespace
        instance.persistent = persistent
        instance.version = version
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsImageRecordUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "artifactPath" in dict_ and dict_["artifactPath"] is not None:
            instance.artifact_path = str(dict_["artifactPath"])
        elif include_empty:
            instance.artifact_path = str()
        if "image" in dict_ and dict_["image"] is not None:
            instance.image = str(dict_["image"])
        elif include_empty:
            instance.image = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "persistent" in dict_ and dict_["persistent"] is not None:
            instance.persistent = bool(dict_["persistent"])
        elif include_empty:
            instance.persistent = bool()
        if "version" in dict_ and dict_["version"] is not None:
            instance.version = str(dict_["version"])
        elif include_empty:
            instance.version = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "artifactPath": "artifact_path",
            "image": "image",
            "namespace": "namespace",
            "persistent": "persistent",
            "version": "version",
        }

    # endregion static methods
