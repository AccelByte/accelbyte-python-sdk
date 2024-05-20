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


class SimpleEntitlement(Model):
    """Simple entitlement (SimpleEntitlement)

    Properties:
        entitlement_id: (entitlementId) OPTIONAL str

        granted_code: (grantedCode) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_namespace: (itemNamespace) OPTIONAL str

        name: (name) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        origin: (origin) OPTIONAL str

        sku: (sku) OPTIONAL str

        use_count: (useCount) OPTIONAL int
    """

    # region fields

    entitlement_id: str  # OPTIONAL
    granted_code: str  # OPTIONAL
    item_id: str  # OPTIONAL
    item_namespace: str  # OPTIONAL
    name: str  # OPTIONAL
    namespace: str  # OPTIONAL
    origin: str  # OPTIONAL
    sku: str  # OPTIONAL
    use_count: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlement_id(self, value: str) -> SimpleEntitlement:
        self.entitlement_id = value
        return self

    def with_granted_code(self, value: str) -> SimpleEntitlement:
        self.granted_code = value
        return self

    def with_item_id(self, value: str) -> SimpleEntitlement:
        self.item_id = value
        return self

    def with_item_namespace(self, value: str) -> SimpleEntitlement:
        self.item_namespace = value
        return self

    def with_name(self, value: str) -> SimpleEntitlement:
        self.name = value
        return self

    def with_namespace(self, value: str) -> SimpleEntitlement:
        self.namespace = value
        return self

    def with_origin(self, value: str) -> SimpleEntitlement:
        self.origin = value
        return self

    def with_sku(self, value: str) -> SimpleEntitlement:
        self.sku = value
        return self

    def with_use_count(self, value: int) -> SimpleEntitlement:
        self.use_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlement_id"):
            result["entitlementId"] = str(self.entitlement_id)
        elif include_empty:
            result["entitlementId"] = ""
        if hasattr(self, "granted_code"):
            result["grantedCode"] = str(self.granted_code)
        elif include_empty:
            result["grantedCode"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_namespace"):
            result["itemNamespace"] = str(self.item_namespace)
        elif include_empty:
            result["itemNamespace"] = ""
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "origin"):
            result["origin"] = str(self.origin)
        elif include_empty:
            result["origin"] = ""
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "use_count"):
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        entitlement_id: Optional[str] = None,
        granted_code: Optional[str] = None,
        item_id: Optional[str] = None,
        item_namespace: Optional[str] = None,
        name: Optional[str] = None,
        namespace: Optional[str] = None,
        origin: Optional[str] = None,
        sku: Optional[str] = None,
        use_count: Optional[int] = None,
        **kwargs,
    ) -> SimpleEntitlement:
        instance = cls()
        if entitlement_id is not None:
            instance.entitlement_id = entitlement_id
        if granted_code is not None:
            instance.granted_code = granted_code
        if item_id is not None:
            instance.item_id = item_id
        if item_namespace is not None:
            instance.item_namespace = item_namespace
        if name is not None:
            instance.name = name
        if namespace is not None:
            instance.namespace = namespace
        if origin is not None:
            instance.origin = origin
        if sku is not None:
            instance.sku = sku
        if use_count is not None:
            instance.use_count = use_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SimpleEntitlement:
        instance = cls()
        if not dict_:
            return instance
        if "entitlementId" in dict_ and dict_["entitlementId"] is not None:
            instance.entitlement_id = str(dict_["entitlementId"])
        elif include_empty:
            instance.entitlement_id = ""
        if "grantedCode" in dict_ and dict_["grantedCode"] is not None:
            instance.granted_code = str(dict_["grantedCode"])
        elif include_empty:
            instance.granted_code = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemNamespace" in dict_ and dict_["itemNamespace"] is not None:
            instance.item_namespace = str(dict_["itemNamespace"])
        elif include_empty:
            instance.item_namespace = ""
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "origin" in dict_ and dict_["origin"] is not None:
            instance.origin = str(dict_["origin"])
        elif include_empty:
            instance.origin = ""
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SimpleEntitlement]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SimpleEntitlement]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SimpleEntitlement, List[SimpleEntitlement], Dict[Any, SimpleEntitlement]
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
            "entitlementId": "entitlement_id",
            "grantedCode": "granted_code",
            "itemId": "item_id",
            "itemNamespace": "item_namespace",
            "name": "name",
            "namespace": "namespace",
            "origin": "origin",
            "sku": "sku",
            "useCount": "use_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "entitlementId": False,
            "grantedCode": False,
            "itemId": False,
            "itemNamespace": False,
            "name": False,
            "namespace": False,
            "origin": False,
            "sku": False,
            "useCount": False,
        }

    # endregion static methods
