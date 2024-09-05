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


class ApimodelsBulkSaveItemError(Model):
    """Apimodels bulk save item error (apimodels.BulkSaveItemError)

    Properties:
        error_code: (errorCode) REQUIRED int

        error_message: (errorMessage) REQUIRED str

        slot_id: (slotId) REQUIRED str

        source_item_id: (sourceItemId) REQUIRED str
    """

    # region fields

    error_code: int  # REQUIRED
    error_message: str  # REQUIRED
    slot_id: str  # REQUIRED
    source_item_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_error_code(self, value: int) -> ApimodelsBulkSaveItemError:
        self.error_code = value
        return self

    def with_error_message(self, value: str) -> ApimodelsBulkSaveItemError:
        self.error_message = value
        return self

    def with_slot_id(self, value: str) -> ApimodelsBulkSaveItemError:
        self.slot_id = value
        return self

    def with_source_item_id(self, value: str) -> ApimodelsBulkSaveItemError:
        self.source_item_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error_code"):
            result["errorCode"] = int(self.error_code)
        elif include_empty:
            result["errorCode"] = 0
        if hasattr(self, "error_message"):
            result["errorMessage"] = str(self.error_message)
        elif include_empty:
            result["errorMessage"] = ""
        if hasattr(self, "slot_id"):
            result["slotId"] = str(self.slot_id)
        elif include_empty:
            result["slotId"] = ""
        if hasattr(self, "source_item_id"):
            result["sourceItemId"] = str(self.source_item_id)
        elif include_empty:
            result["sourceItemId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error_code: int,
        error_message: str,
        slot_id: str,
        source_item_id: str,
        **kwargs,
    ) -> ApimodelsBulkSaveItemError:
        instance = cls()
        instance.error_code = error_code
        instance.error_message = error_message
        instance.slot_id = slot_id
        instance.source_item_id = source_item_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsBulkSaveItemError:
        instance = cls()
        if not dict_:
            return instance
        if "errorCode" in dict_ and dict_["errorCode"] is not None:
            instance.error_code = int(dict_["errorCode"])
        elif include_empty:
            instance.error_code = 0
        if "errorMessage" in dict_ and dict_["errorMessage"] is not None:
            instance.error_message = str(dict_["errorMessage"])
        elif include_empty:
            instance.error_message = ""
        if "slotId" in dict_ and dict_["slotId"] is not None:
            instance.slot_id = str(dict_["slotId"])
        elif include_empty:
            instance.slot_id = ""
        if "sourceItemId" in dict_ and dict_["sourceItemId"] is not None:
            instance.source_item_id = str(dict_["sourceItemId"])
        elif include_empty:
            instance.source_item_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsBulkSaveItemError]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsBulkSaveItemError]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsBulkSaveItemError,
        List[ApimodelsBulkSaveItemError],
        Dict[Any, ApimodelsBulkSaveItemError],
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
            "errorCode": "error_code",
            "errorMessage": "error_message",
            "slotId": "slot_id",
            "sourceItemId": "source_item_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "errorCode": True,
            "errorMessage": True,
            "slotId": True,
            "sourceItemId": True,
        }

    # endregion static methods
