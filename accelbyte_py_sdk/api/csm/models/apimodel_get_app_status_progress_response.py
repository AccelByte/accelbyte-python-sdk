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

from ..models.apimodel_app_status_progress_step import ApimodelAppStatusProgressStep


class ApimodelGetAppStatusProgressResponse(Model):
    """Apimodel get app status progress response (apimodel.GetAppStatusProgressResponse)

    Properties:
        app_id: (app_id) REQUIRED str

        app_name: (app_name) REQUIRED str

        operation_id: (operation_id) REQUIRED str

        steps: (steps) REQUIRED List[ApimodelAppStatusProgressStep]
    """

    # region fields

    app_id: str  # REQUIRED
    app_name: str  # REQUIRED
    operation_id: str  # REQUIRED
    steps: List[ApimodelAppStatusProgressStep]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> ApimodelGetAppStatusProgressResponse:
        self.app_id = value
        return self

    def with_app_name(self, value: str) -> ApimodelGetAppStatusProgressResponse:
        self.app_name = value
        return self

    def with_operation_id(self, value: str) -> ApimodelGetAppStatusProgressResponse:
        self.operation_id = value
        return self

    def with_steps(
        self, value: List[ApimodelAppStatusProgressStep]
    ) -> ApimodelGetAppStatusProgressResponse:
        self.steps = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["app_id"] = str(self.app_id)
        elif include_empty:
            result["app_id"] = ""
        if hasattr(self, "app_name"):
            result["app_name"] = str(self.app_name)
        elif include_empty:
            result["app_name"] = ""
        if hasattr(self, "operation_id"):
            result["operation_id"] = str(self.operation_id)
        elif include_empty:
            result["operation_id"] = ""
        if hasattr(self, "steps"):
            result["steps"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.steps
            ]
        elif include_empty:
            result["steps"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        app_name: str,
        operation_id: str,
        steps: List[ApimodelAppStatusProgressStep],
        **kwargs,
    ) -> ApimodelGetAppStatusProgressResponse:
        instance = cls()
        instance.app_id = app_id
        instance.app_name = app_name
        instance.operation_id = operation_id
        instance.steps = steps
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelGetAppStatusProgressResponse:
        instance = cls()
        if not dict_:
            return instance
        if "app_id" in dict_ and dict_["app_id"] is not None:
            instance.app_id = str(dict_["app_id"])
        elif include_empty:
            instance.app_id = ""
        if "app_name" in dict_ and dict_["app_name"] is not None:
            instance.app_name = str(dict_["app_name"])
        elif include_empty:
            instance.app_name = ""
        if "operation_id" in dict_ and dict_["operation_id"] is not None:
            instance.operation_id = str(dict_["operation_id"])
        elif include_empty:
            instance.operation_id = ""
        if "steps" in dict_ and dict_["steps"] is not None:
            instance.steps = [
                ApimodelAppStatusProgressStep.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["steps"]
            ]
        elif include_empty:
            instance.steps = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelGetAppStatusProgressResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelGetAppStatusProgressResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelGetAppStatusProgressResponse,
        List[ApimodelGetAppStatusProgressResponse],
        Dict[Any, ApimodelGetAppStatusProgressResponse],
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
            "app_id": "app_id",
            "app_name": "app_name",
            "operation_id": "operation_id",
            "steps": "steps",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "app_id": True,
            "app_name": True,
            "operation_id": True,
            "steps": True,
        }

    # endregion static methods
