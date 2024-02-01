# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Ds Artifact Manager

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


class ModelsArtifactFileStatus(Model):
    """Models artifact file status (models.ArtifactFileStatus)

    Properties:
        artifact_existence: (artifact_existence) REQUIRED bool

        artifact_status: (artifact_status) OPTIONAL str
    """

    # region fields

    artifact_existence: bool  # REQUIRED
    artifact_status: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_artifact_existence(self, value: bool) -> ModelsArtifactFileStatus:
        self.artifact_existence = value
        return self

    def with_artifact_status(self, value: str) -> ModelsArtifactFileStatus:
        self.artifact_status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "artifact_existence"):
            result["artifact_existence"] = bool(self.artifact_existence)
        elif include_empty:
            result["artifact_existence"] = False
        if hasattr(self, "artifact_status"):
            result["artifact_status"] = str(self.artifact_status)
        elif include_empty:
            result["artifact_status"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, artifact_existence: bool, artifact_status: Optional[str] = None, **kwargs
    ) -> ModelsArtifactFileStatus:
        instance = cls()
        instance.artifact_existence = artifact_existence
        if artifact_status is not None:
            instance.artifact_status = artifact_status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsArtifactFileStatus:
        instance = cls()
        if not dict_:
            return instance
        if "artifact_existence" in dict_ and dict_["artifact_existence"] is not None:
            instance.artifact_existence = bool(dict_["artifact_existence"])
        elif include_empty:
            instance.artifact_existence = False
        if "artifact_status" in dict_ and dict_["artifact_status"] is not None:
            instance.artifact_status = str(dict_["artifact_status"])
        elif include_empty:
            instance.artifact_status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsArtifactFileStatus]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsArtifactFileStatus]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsArtifactFileStatus,
        List[ModelsArtifactFileStatus],
        Dict[Any, ModelsArtifactFileStatus],
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
            "artifact_existence": "artifact_existence",
            "artifact_status": "artifact_status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "artifact_existence": True,
            "artifact_status": False,
        }

    # endregion static methods
