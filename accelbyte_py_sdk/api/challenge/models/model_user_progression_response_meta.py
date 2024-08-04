# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Challenge Service

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

from ..models.model_user_progression_period_response_meta import (
    ModelUserProgressionPeriodResponseMeta,
)


class ModelUserProgressionResponseMeta(Model):
    """Model user progression response meta (model.UserProgressionResponseMeta)

    Properties:
        code: (code) REQUIRED str

        description: (description) REQUIRED str

        name: (name) REQUIRED str

        period: (period) REQUIRED ModelUserProgressionPeriodResponseMeta

        start_date: (startDate) REQUIRED str

        user_id: (userId) REQUIRED str

        end_date: (endDate) OPTIONAL str
    """

    # region fields

    code: str  # REQUIRED
    description: str  # REQUIRED
    name: str  # REQUIRED
    period: ModelUserProgressionPeriodResponseMeta  # REQUIRED
    start_date: str  # REQUIRED
    user_id: str  # REQUIRED
    end_date: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ModelUserProgressionResponseMeta:
        self.code = value
        return self

    def with_description(self, value: str) -> ModelUserProgressionResponseMeta:
        self.description = value
        return self

    def with_name(self, value: str) -> ModelUserProgressionResponseMeta:
        self.name = value
        return self

    def with_period(
        self, value: ModelUserProgressionPeriodResponseMeta
    ) -> ModelUserProgressionResponseMeta:
        self.period = value
        return self

    def with_start_date(self, value: str) -> ModelUserProgressionResponseMeta:
        self.start_date = value
        return self

    def with_user_id(self, value: str) -> ModelUserProgressionResponseMeta:
        self.user_id = value
        return self

    def with_end_date(self, value: str) -> ModelUserProgressionResponseMeta:
        self.end_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "period"):
            result["period"] = self.period.to_dict(include_empty=include_empty)
        elif include_empty:
            result["period"] = ModelUserProgressionPeriodResponseMeta()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        description: str,
        name: str,
        period: ModelUserProgressionPeriodResponseMeta,
        start_date: str,
        user_id: str,
        end_date: Optional[str] = None,
        **kwargs,
    ) -> ModelUserProgressionResponseMeta:
        instance = cls()
        instance.code = code
        instance.description = description
        instance.name = name
        instance.period = period
        instance.start_date = start_date
        instance.user_id = user_id
        if end_date is not None:
            instance.end_date = end_date
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserProgressionResponseMeta:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "period" in dict_ and dict_["period"] is not None:
            instance.period = ModelUserProgressionPeriodResponseMeta.create_from_dict(
                dict_["period"], include_empty=include_empty
            )
        elif include_empty:
            instance.period = ModelUserProgressionPeriodResponseMeta()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserProgressionResponseMeta]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserProgressionResponseMeta]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserProgressionResponseMeta,
        List[ModelUserProgressionResponseMeta],
        Dict[Any, ModelUserProgressionResponseMeta],
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
            "code": "code",
            "description": "description",
            "name": "name",
            "period": "period",
            "startDate": "start_date",
            "userId": "user_id",
            "endDate": "end_date",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "description": True,
            "name": True,
            "period": True,
            "startDate": True,
            "userId": True,
            "endDate": False,
        }

    # endregion static methods
