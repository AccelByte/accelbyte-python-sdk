# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service

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

from ..models.apimodels_error_response import ApimodelsErrorResponse


class ApimodelsUpdateItemResp(Model):
    """Apimodels update item resp (apimodels.UpdateItemResp)

    Properties:
        slot_id: (slotId) REQUIRED str

        source_item_id: (sourceItemId) REQUIRED str

        success: (success) REQUIRED bool

        error_details: (errorDetails) OPTIONAL ApimodelsErrorResponse
    """

    # region fields

    slot_id: str  # REQUIRED
    source_item_id: str  # REQUIRED
    success: bool  # REQUIRED
    error_details: ApimodelsErrorResponse  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_slot_id(self, value: str) -> ApimodelsUpdateItemResp:
        self.slot_id = value
        return self

    def with_source_item_id(self, value: str) -> ApimodelsUpdateItemResp:
        self.source_item_id = value
        return self

    def with_success(self, value: bool) -> ApimodelsUpdateItemResp:
        self.success = value
        return self

    def with_error_details(
        self, value: ApimodelsErrorResponse
    ) -> ApimodelsUpdateItemResp:
        self.error_details = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "slot_id"):
            result["slotId"] = str(self.slot_id)
        elif include_empty:
            result["slotId"] = ""
        if hasattr(self, "source_item_id"):
            result["sourceItemId"] = str(self.source_item_id)
        elif include_empty:
            result["sourceItemId"] = ""
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = False
        if hasattr(self, "error_details"):
            result["errorDetails"] = self.error_details.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["errorDetails"] = ApimodelsErrorResponse()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        slot_id: str,
        source_item_id: str,
        success: bool,
        error_details: Optional[ApimodelsErrorResponse] = None,
        **kwargs,
    ) -> ApimodelsUpdateItemResp:
        instance = cls()
        instance.slot_id = slot_id
        instance.source_item_id = source_item_id
        instance.success = success
        if error_details is not None:
            instance.error_details = error_details
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsUpdateItemResp:
        instance = cls()
        if not dict_:
            return instance
        if "slotId" in dict_ and dict_["slotId"] is not None:
            instance.slot_id = str(dict_["slotId"])
        elif include_empty:
            instance.slot_id = ""
        if "sourceItemId" in dict_ and dict_["sourceItemId"] is not None:
            instance.source_item_id = str(dict_["sourceItemId"])
        elif include_empty:
            instance.source_item_id = ""
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = False
        if "errorDetails" in dict_ and dict_["errorDetails"] is not None:
            instance.error_details = ApimodelsErrorResponse.create_from_dict(
                dict_["errorDetails"], include_empty=include_empty
            )
        elif include_empty:
            instance.error_details = ApimodelsErrorResponse()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsUpdateItemResp]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsUpdateItemResp]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsUpdateItemResp,
        List[ApimodelsUpdateItemResp],
        Dict[Any, ApimodelsUpdateItemResp],
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
            "slotId": "slot_id",
            "sourceItemId": "source_item_id",
            "success": "success",
            "errorDetails": "error_details",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "slotId": True,
            "sourceItemId": True,
            "success": True,
            "errorDetails": False,
        }

    # endregion static methods
