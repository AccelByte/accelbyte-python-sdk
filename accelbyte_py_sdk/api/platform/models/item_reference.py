# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class ItemReference(Model):
    """Item reference (ItemReference)

    Properties:
        code_redemption_id: (codeRedemptionId) OPTIONAL str

        condition_name: (conditionName) OPTIONAL str

        dlc_id: (dlcId) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        platform: (platform) OPTIONAL str

        platform_product_id: (platformProductId) OPTIONAL str

        reference_id: (referenceId) OPTIONAL str

        reward_code: (rewardCode) OPTIONAL str

        store_id: (storeId) OPTIONAL str
    """

    # region fields

    code_redemption_id: str  # OPTIONAL
    condition_name: str  # OPTIONAL
    dlc_id: str  # OPTIONAL
    item_id: str  # OPTIONAL
    namespace: str  # OPTIONAL
    platform: str  # OPTIONAL
    platform_product_id: str  # OPTIONAL
    reference_id: str  # OPTIONAL
    reward_code: str  # OPTIONAL
    store_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code_redemption_id(self, value: str) -> ItemReference:
        self.code_redemption_id = value
        return self

    def with_condition_name(self, value: str) -> ItemReference:
        self.condition_name = value
        return self

    def with_dlc_id(self, value: str) -> ItemReference:
        self.dlc_id = value
        return self

    def with_item_id(self, value: str) -> ItemReference:
        self.item_id = value
        return self

    def with_namespace(self, value: str) -> ItemReference:
        self.namespace = value
        return self

    def with_platform(self, value: str) -> ItemReference:
        self.platform = value
        return self

    def with_platform_product_id(self, value: str) -> ItemReference:
        self.platform_product_id = value
        return self

    def with_reference_id(self, value: str) -> ItemReference:
        self.reference_id = value
        return self

    def with_reward_code(self, value: str) -> ItemReference:
        self.reward_code = value
        return self

    def with_store_id(self, value: str) -> ItemReference:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code_redemption_id"):
            result["codeRedemptionId"] = str(self.code_redemption_id)
        elif include_empty:
            result["codeRedemptionId"] = ""
        if hasattr(self, "condition_name"):
            result["conditionName"] = str(self.condition_name)
        elif include_empty:
            result["conditionName"] = ""
        if hasattr(self, "dlc_id"):
            result["dlcId"] = str(self.dlc_id)
        elif include_empty:
            result["dlcId"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "platform_product_id"):
            result["platformProductId"] = str(self.platform_product_id)
        elif include_empty:
            result["platformProductId"] = ""
        if hasattr(self, "reference_id"):
            result["referenceId"] = str(self.reference_id)
        elif include_empty:
            result["referenceId"] = ""
        if hasattr(self, "reward_code"):
            result["rewardCode"] = str(self.reward_code)
        elif include_empty:
            result["rewardCode"] = ""
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code_redemption_id: Optional[str] = None,
        condition_name: Optional[str] = None,
        dlc_id: Optional[str] = None,
        item_id: Optional[str] = None,
        namespace: Optional[str] = None,
        platform: Optional[str] = None,
        platform_product_id: Optional[str] = None,
        reference_id: Optional[str] = None,
        reward_code: Optional[str] = None,
        store_id: Optional[str] = None,
        **kwargs,
    ) -> ItemReference:
        instance = cls()
        if code_redemption_id is not None:
            instance.code_redemption_id = code_redemption_id
        if condition_name is not None:
            instance.condition_name = condition_name
        if dlc_id is not None:
            instance.dlc_id = dlc_id
        if item_id is not None:
            instance.item_id = item_id
        if namespace is not None:
            instance.namespace = namespace
        if platform is not None:
            instance.platform = platform
        if platform_product_id is not None:
            instance.platform_product_id = platform_product_id
        if reference_id is not None:
            instance.reference_id = reference_id
        if reward_code is not None:
            instance.reward_code = reward_code
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ItemReference:
        instance = cls()
        if not dict_:
            return instance
        if "codeRedemptionId" in dict_ and dict_["codeRedemptionId"] is not None:
            instance.code_redemption_id = str(dict_["codeRedemptionId"])
        elif include_empty:
            instance.code_redemption_id = ""
        if "conditionName" in dict_ and dict_["conditionName"] is not None:
            instance.condition_name = str(dict_["conditionName"])
        elif include_empty:
            instance.condition_name = ""
        if "dlcId" in dict_ and dict_["dlcId"] is not None:
            instance.dlc_id = str(dict_["dlcId"])
        elif include_empty:
            instance.dlc_id = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if "platformProductId" in dict_ and dict_["platformProductId"] is not None:
            instance.platform_product_id = str(dict_["platformProductId"])
        elif include_empty:
            instance.platform_product_id = ""
        if "referenceId" in dict_ and dict_["referenceId"] is not None:
            instance.reference_id = str(dict_["referenceId"])
        elif include_empty:
            instance.reference_id = ""
        if "rewardCode" in dict_ and dict_["rewardCode"] is not None:
            instance.reward_code = str(dict_["rewardCode"])
        elif include_empty:
            instance.reward_code = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ItemReference]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ItemReference]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ItemReference, List[ItemReference], Dict[Any, ItemReference]]:
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
            "codeRedemptionId": "code_redemption_id",
            "conditionName": "condition_name",
            "dlcId": "dlc_id",
            "itemId": "item_id",
            "namespace": "namespace",
            "platform": "platform",
            "platformProductId": "platform_product_id",
            "referenceId": "reference_id",
            "rewardCode": "reward_code",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "codeRedemptionId": False,
            "conditionName": False,
            "dlcId": False,
            "itemId": False,
            "namespace": False,
            "platform": False,
            "platformProductId": False,
            "referenceId": False,
            "rewardCode": False,
            "storeId": False,
        }

    # endregion static methods
