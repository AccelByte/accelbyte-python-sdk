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


class ApimodelAppStatusProgressStep(Model):
    """Apimodel app status progress step (apimodel.AppStatusProgressStep)

    Properties:
        status: (status) REQUIRED str

        step: (step) REQUIRED str

        step_order: (step_order) REQUIRED int

        finished_at: (finished_at) OPTIONAL str

        started_at: (started_at) OPTIONAL str

        status_message: (status_message) OPTIONAL str
    """

    # region fields

    status: str  # REQUIRED
    step: str  # REQUIRED
    step_order: int  # REQUIRED
    finished_at: str  # OPTIONAL
    started_at: str  # OPTIONAL
    status_message: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_status(self, value: str) -> ApimodelAppStatusProgressStep:
        self.status = value
        return self

    def with_step(self, value: str) -> ApimodelAppStatusProgressStep:
        self.step = value
        return self

    def with_step_order(self, value: int) -> ApimodelAppStatusProgressStep:
        self.step_order = value
        return self

    def with_finished_at(self, value: str) -> ApimodelAppStatusProgressStep:
        self.finished_at = value
        return self

    def with_started_at(self, value: str) -> ApimodelAppStatusProgressStep:
        self.started_at = value
        return self

    def with_status_message(self, value: str) -> ApimodelAppStatusProgressStep:
        self.status_message = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        if hasattr(self, "step"):
            result["step"] = str(self.step)
        elif include_empty:
            result["step"] = ""
        if hasattr(self, "step_order"):
            result["step_order"] = int(self.step_order)
        elif include_empty:
            result["step_order"] = 0
        if hasattr(self, "finished_at"):
            result["finished_at"] = str(self.finished_at)
        elif include_empty:
            result["finished_at"] = ""
        if hasattr(self, "started_at"):
            result["started_at"] = str(self.started_at)
        elif include_empty:
            result["started_at"] = ""
        if hasattr(self, "status_message"):
            result["status_message"] = str(self.status_message)
        elif include_empty:
            result["status_message"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        status: str,
        step: str,
        step_order: int,
        finished_at: Optional[str] = None,
        started_at: Optional[str] = None,
        status_message: Optional[str] = None,
        **kwargs,
    ) -> ApimodelAppStatusProgressStep:
        instance = cls()
        instance.status = status
        instance.step = step
        instance.step_order = step_order
        if finished_at is not None:
            instance.finished_at = finished_at
        if started_at is not None:
            instance.started_at = started_at
        if status_message is not None:
            instance.status_message = status_message
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelAppStatusProgressStep:
        instance = cls()
        if not dict_:
            return instance
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        if "step" in dict_ and dict_["step"] is not None:
            instance.step = str(dict_["step"])
        elif include_empty:
            instance.step = ""
        if "step_order" in dict_ and dict_["step_order"] is not None:
            instance.step_order = int(dict_["step_order"])
        elif include_empty:
            instance.step_order = 0
        if "finished_at" in dict_ and dict_["finished_at"] is not None:
            instance.finished_at = str(dict_["finished_at"])
        elif include_empty:
            instance.finished_at = ""
        if "started_at" in dict_ and dict_["started_at"] is not None:
            instance.started_at = str(dict_["started_at"])
        elif include_empty:
            instance.started_at = ""
        if "status_message" in dict_ and dict_["status_message"] is not None:
            instance.status_message = str(dict_["status_message"])
        elif include_empty:
            instance.status_message = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelAppStatusProgressStep]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelAppStatusProgressStep]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelAppStatusProgressStep,
        List[ApimodelAppStatusProgressStep],
        Dict[Any, ApimodelAppStatusProgressStep],
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
            "status": "status",
            "step": "step",
            "step_order": "step_order",
            "finished_at": "finished_at",
            "started_at": "started_at",
            "status_message": "status_message",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "status": True,
            "step": True,
            "step_order": True,
            "finished_at": False,
            "started_at": False,
            "status_message": False,
        }

    # endregion static methods
