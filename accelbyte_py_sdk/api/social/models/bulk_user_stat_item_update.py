# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Social Service (1.30.1)

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


class UpdateStrategyEnum(StrEnum):
    INCREMENT = "INCREMENT"
    MAX = "MAX"
    MIN = "MIN"
    OVERRIDE = "OVERRIDE"


class BulkUserStatItemUpdate(Model):
    """Bulk user stat item update (BulkUserStatItemUpdate)

    Properties:
        stat_code: (statCode) REQUIRED str

        update_strategy: (updateStrategy) REQUIRED Union[str, UpdateStrategyEnum]

        user_id: (userId) REQUIRED str

        value: (value) REQUIRED float

        additional_data: (additionalData) OPTIONAL Dict[str, Any]

        additional_key: (additionalKey) OPTIONAL str
    """

    # region fields

    stat_code: str  # REQUIRED
    update_strategy: Union[str, UpdateStrategyEnum]  # REQUIRED
    user_id: str  # REQUIRED
    value: float  # REQUIRED
    additional_data: Dict[str, Any]  # OPTIONAL
    additional_key: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_stat_code(self, value: str) -> BulkUserStatItemUpdate:
        self.stat_code = value
        return self

    def with_update_strategy(
        self, value: Union[str, UpdateStrategyEnum]
    ) -> BulkUserStatItemUpdate:
        self.update_strategy = value
        return self

    def with_user_id(self, value: str) -> BulkUserStatItemUpdate:
        self.user_id = value
        return self

    def with_value(self, value: float) -> BulkUserStatItemUpdate:
        self.value = value
        return self

    def with_additional_data(self, value: Dict[str, Any]) -> BulkUserStatItemUpdate:
        self.additional_data = value
        return self

    def with_additional_key(self, value: str) -> BulkUserStatItemUpdate:
        self.additional_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "update_strategy"):
            result["updateStrategy"] = str(self.update_strategy)
        elif include_empty:
            result["updateStrategy"] = Union[str, UpdateStrategyEnum]()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "value"):
            result["value"] = float(self.value)
        elif include_empty:
            result["value"] = 0.0
        if hasattr(self, "additional_data"):
            result["additionalData"] = {
                str(k0): v0 for k0, v0 in self.additional_data.items()
            }
        elif include_empty:
            result["additionalData"] = {}
        if hasattr(self, "additional_key"):
            result["additionalKey"] = str(self.additional_key)
        elif include_empty:
            result["additionalKey"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        stat_code: str,
        update_strategy: Union[str, UpdateStrategyEnum],
        user_id: str,
        value: float,
        additional_data: Optional[Dict[str, Any]] = None,
        additional_key: Optional[str] = None,
    ) -> BulkUserStatItemUpdate:
        instance = cls()
        instance.stat_code = stat_code
        instance.update_strategy = update_strategy
        instance.user_id = user_id
        instance.value = value
        if additional_data is not None:
            instance.additional_data = additional_data
        if additional_key is not None:
            instance.additional_key = additional_key
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> BulkUserStatItemUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "updateStrategy" in dict_ and dict_["updateStrategy"] is not None:
            instance.update_strategy = str(dict_["updateStrategy"])
        elif include_empty:
            instance.update_strategy = Union[str, UpdateStrategyEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = float(dict_["value"])
        elif include_empty:
            instance.value = 0.0
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = {
                str(k0): v0 for k0, v0 in dict_["additionalData"].items()
            }
        elif include_empty:
            instance.additional_data = {}
        if "additionalKey" in dict_ and dict_["additionalKey"] is not None:
            instance.additional_key = str(dict_["additionalKey"])
        elif include_empty:
            instance.additional_key = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BulkUserStatItemUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BulkUserStatItemUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        BulkUserStatItemUpdate,
        List[BulkUserStatItemUpdate],
        Dict[Any, BulkUserStatItemUpdate],
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
            "statCode": "stat_code",
            "updateStrategy": "update_strategy",
            "userId": "user_id",
            "value": "value",
            "additionalData": "additional_data",
            "additionalKey": "additional_key",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "statCode": True,
            "updateStrategy": True,
            "userId": True,
            "value": True,
            "additionalData": False,
            "additionalKey": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "updateStrategy": ["INCREMENT", "MAX", "MIN", "OVERRIDE"],
        }

    # endregion static methods
