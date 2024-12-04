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


class ModelImageScanFinding(Model):
    """Model image scan finding (model.ImageScanFinding)

    Properties:
        name: (name) REQUIRED str

        severity: (severity) REQUIRED str

        uri: (uri) REQUIRED str

        description: (description) OPTIONAL str
    """

    # region fields

    name: str  # REQUIRED
    severity: str  # REQUIRED
    uri: str  # REQUIRED
    description: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> ModelImageScanFinding:
        self.name = value
        return self

    def with_severity(self, value: str) -> ModelImageScanFinding:
        self.severity = value
        return self

    def with_uri(self, value: str) -> ModelImageScanFinding:
        self.uri = value
        return self

    def with_description(self, value: str) -> ModelImageScanFinding:
        self.description = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "severity"):
            result["severity"] = str(self.severity)
        elif include_empty:
            result["severity"] = ""
        if hasattr(self, "uri"):
            result["uri"] = str(self.uri)
        elif include_empty:
            result["uri"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        name: str,
        severity: str,
        uri: str,
        description: Optional[str] = None,
        **kwargs,
    ) -> ModelImageScanFinding:
        instance = cls()
        instance.name = name
        instance.severity = severity
        instance.uri = uri
        if description is not None:
            instance.description = description
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelImageScanFinding:
        instance = cls()
        if not dict_:
            return instance
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "severity" in dict_ and dict_["severity"] is not None:
            instance.severity = str(dict_["severity"])
        elif include_empty:
            instance.severity = ""
        if "uri" in dict_ and dict_["uri"] is not None:
            instance.uri = str(dict_["uri"])
        elif include_empty:
            instance.uri = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelImageScanFinding]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelImageScanFinding]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelImageScanFinding,
        List[ModelImageScanFinding],
        Dict[Any, ModelImageScanFinding],
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
            "name": "name",
            "severity": "severity",
            "uri": "uri",
            "description": "description",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "name": True,
            "severity": True,
            "uri": True,
            "description": False,
        }

    # endregion static methods
