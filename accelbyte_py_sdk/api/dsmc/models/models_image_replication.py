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


class ModelsImageReplication(Model):
    """Models image replication (models.ImageReplication)

    Properties:
        failure_code: (failure_code) REQUIRED str

        region: (region) REQUIRED str

        status: (status) REQUIRED str

        uri: (uri) REQUIRED str
    """

    # region fields

    failure_code: str  # REQUIRED
    region: str  # REQUIRED
    status: str  # REQUIRED
    uri: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_failure_code(self, value: str) -> ModelsImageReplication:
        self.failure_code = value
        return self

    def with_region(self, value: str) -> ModelsImageReplication:
        self.region = value
        return self

    def with_status(self, value: str) -> ModelsImageReplication:
        self.status = value
        return self

    def with_uri(self, value: str) -> ModelsImageReplication:
        self.uri = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "failure_code"):
            result["failure_code"] = str(self.failure_code)
        elif include_empty:
            result["failure_code"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "uri"):
            result["uri"] = str(self.uri)
        elif include_empty:
            result["uri"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, failure_code: str, region: str, status: str, uri: str, **kwargs
    ) -> ModelsImageReplication:
        instance = cls()
        instance.failure_code = failure_code
        instance.region = region
        instance.status = status
        instance.uri = uri
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsImageReplication:
        instance = cls()
        if not dict_:
            return instance
        if "failure_code" in dict_ and dict_["failure_code"] is not None:
            instance.failure_code = str(dict_["failure_code"])
        elif include_empty:
            instance.failure_code = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "uri" in dict_ and dict_["uri"] is not None:
            instance.uri = str(dict_["uri"])
        elif include_empty:
            instance.uri = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsImageReplication]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsImageReplication]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsImageReplication,
        List[ModelsImageReplication],
        Dict[Any, ModelsImageReplication],
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
            "failure_code": "failure_code",
            "region": "region",
            "status": "status",
            "uri": "uri",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "failure_code": True,
            "region": True,
            "status": True,
            "uri": True,
        }

    # endregion static methods
