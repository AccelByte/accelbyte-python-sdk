# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.18.1)

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
from ....core import StrEnum

from ..models.fulfillment_script_context import FulfillmentScriptContext


class TypeEnum(StrEnum):
    GRANTDAYS = "grantDays"


class FulfillmentScriptEvalTestRequest(Model):
    """Fulfillment script eval test request (FulfillmentScriptEvalTestRequest)

    Properties:
        context: (context) REQUIRED FulfillmentScriptContext

        script: (script) REQUIRED str

        type_: (type) REQUIRED Union[str, TypeEnum]
    """

    # region fields

    context: FulfillmentScriptContext  # REQUIRED
    script: str  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_context(
        self, value: FulfillmentScriptContext
    ) -> FulfillmentScriptEvalTestRequest:
        self.context = value
        return self

    def with_script(self, value: str) -> FulfillmentScriptEvalTestRequest:
        self.script = value
        return self

    def with_type(
        self, value: Union[str, TypeEnum]
    ) -> FulfillmentScriptEvalTestRequest:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "context"):
            result["context"] = self.context.to_dict(include_empty=include_empty)
        elif include_empty:
            result["context"] = FulfillmentScriptContext()
        if hasattr(self, "script"):
            result["script"] = str(self.script)
        elif include_empty:
            result["script"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        context: FulfillmentScriptContext,
        script: str,
        type_: Union[str, TypeEnum],
    ) -> FulfillmentScriptEvalTestRequest:
        instance = cls()
        instance.context = context
        instance.script = script
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillmentScriptEvalTestRequest:
        instance = cls()
        if not dict_:
            return instance
        if "context" in dict_ and dict_["context"] is not None:
            instance.context = FulfillmentScriptContext.create_from_dict(
                dict_["context"], include_empty=include_empty
            )
        elif include_empty:
            instance.context = FulfillmentScriptContext()
        if "script" in dict_ and dict_["script"] is not None:
            instance.script = str(dict_["script"])
        elif include_empty:
            instance.script = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulfillmentScriptEvalTestRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillmentScriptEvalTestRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FulfillmentScriptEvalTestRequest,
        List[FulfillmentScriptEvalTestRequest],
        Dict[Any, FulfillmentScriptEvalTestRequest],
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
            "context": "context",
            "script": "script",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "context": True,
            "script": True,
            "type": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["grantDays"],
        }

    # endregion static methods
