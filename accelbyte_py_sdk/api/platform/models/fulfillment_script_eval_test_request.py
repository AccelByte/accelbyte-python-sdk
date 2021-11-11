# justice-platform-service (3.37.1)

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

from ..models.fulfillment_script_context import FulfillmentScriptContext


class FulfillmentScriptEvalTestRequest(Model):
    """Fulfillment script eval test request (FulfillmentScriptEvalTestRequest)

    Properties:
        context: (context) REQUIRED FulfillmentScriptContext

        script: (script) REQUIRED str

        type_: (type) REQUIRED str
    """

    # region fields

    context: FulfillmentScriptContext                                                              # REQUIRED
    script: str                                                                                    # REQUIRED
    type_: str                                                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_context(self, value: FulfillmentScriptContext) -> FulfillmentScriptEvalTestRequest:
        self.context = value
        return self

    def with_script(self, value: str) -> FulfillmentScriptEvalTestRequest:
        self.script = value
        return self

    def with_type(self, value: str) -> FulfillmentScriptEvalTestRequest:
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
            result["script"] = str()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        context: FulfillmentScriptContext,
        script: str,
        type_: str,
    ) -> FulfillmentScriptEvalTestRequest:
        instance = cls()
        instance.context = context
        instance.script = script
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FulfillmentScriptEvalTestRequest:
        instance = cls()
        if not dict_:
            return instance
        if "context" in dict_ and dict_["context"] is not None:
            instance.context = FulfillmentScriptContext.create_from_dict(dict_["context"], include_empty=include_empty)
        elif include_empty:
            instance.context = FulfillmentScriptContext()
        if "script" in dict_ and dict_["script"] is not None:
            instance.script = str(dict_["script"])
        elif include_empty:
            instance.script = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "context": "context",
            "script": "script",
            "type": "type_",
        }

    # endregion static methods
