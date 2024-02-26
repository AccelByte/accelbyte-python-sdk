# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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

from ..models.clientmodel_default_field_value_value import (
    ClientmodelDefaultFieldValueValue,
)


class ClientmodelDefaultFieldValue(Model):
    """Clientmodel default field value (clientmodel.DefaultFieldValue)

    Properties:
        field: (field) REQUIRED str

        value: (value) REQUIRED ClientmodelDefaultFieldValueValue
    """

    # region fields

    field: str  # REQUIRED
    value: ClientmodelDefaultFieldValueValue  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_field(self, value: str) -> ClientmodelDefaultFieldValue:
        self.field = value
        return self

    def with_value(
        self, value: ClientmodelDefaultFieldValueValue
    ) -> ClientmodelDefaultFieldValue:
        self.value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "field"):
            result["field"] = str(self.field)
        elif include_empty:
            result["field"] = ""
        if hasattr(self, "value"):
            result["value"] = self.value.to_dict(include_empty=include_empty)
        elif include_empty:
            result["value"] = ClientmodelDefaultFieldValueValue()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, field: str, value: ClientmodelDefaultFieldValueValue, **kwargs
    ) -> ClientmodelDefaultFieldValue:
        instance = cls()
        instance.field = field
        instance.value = value
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClientmodelDefaultFieldValue:
        instance = cls()
        if not dict_:
            return instance
        if "field" in dict_ and dict_["field"] is not None:
            instance.field = str(dict_["field"])
        elif include_empty:
            instance.field = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = ClientmodelDefaultFieldValueValue.create_from_dict(
                dict_["value"], include_empty=include_empty
            )
        elif include_empty:
            instance.value = ClientmodelDefaultFieldValueValue()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClientmodelDefaultFieldValue]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClientmodelDefaultFieldValue]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ClientmodelDefaultFieldValue,
        List[ClientmodelDefaultFieldValue],
        Dict[Any, ClientmodelDefaultFieldValue],
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
            "field": "field",
            "value": "value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "field": True,
            "value": True,
        }

    # endregion static methods
