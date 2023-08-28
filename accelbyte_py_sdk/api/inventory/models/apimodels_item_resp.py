# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service (0.1.0)

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


class ApimodelsItemResp(Model):
    """Apimodels item resp (apimodels.ItemResp)

    Properties:
        created_at: (createdAt) REQUIRED str

        custom_attributes: (customAttributes) REQUIRED Dict[str, Any]

        id_: (id) REQUIRED str

        inventory_id: (inventoryId) REQUIRED str

        namespace: (namespace) REQUIRED str

        qty: (qty) REQUIRED int

        server_custom_attributes: (serverCustomAttributes) REQUIRED Dict[str, Any]

        source: (source) REQUIRED str

        source_item_id: (sourceItemId) REQUIRED str

        tags: (tags) REQUIRED List[str]

        type_: (type) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    custom_attributes: Dict[str, Any]  # REQUIRED
    id_: str  # REQUIRED
    inventory_id: str  # REQUIRED
    namespace: str  # REQUIRED
    qty: int  # REQUIRED
    server_custom_attributes: Dict[str, Any]  # REQUIRED
    source: str  # REQUIRED
    source_item_id: str  # REQUIRED
    tags: List[str]  # REQUIRED
    type_: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApimodelsItemResp:
        self.created_at = value
        return self

    def with_custom_attributes(self, value: Dict[str, Any]) -> ApimodelsItemResp:
        self.custom_attributes = value
        return self

    def with_id(self, value: str) -> ApimodelsItemResp:
        self.id_ = value
        return self

    def with_inventory_id(self, value: str) -> ApimodelsItemResp:
        self.inventory_id = value
        return self

    def with_namespace(self, value: str) -> ApimodelsItemResp:
        self.namespace = value
        return self

    def with_qty(self, value: int) -> ApimodelsItemResp:
        self.qty = value
        return self

    def with_server_custom_attributes(self, value: Dict[str, Any]) -> ApimodelsItemResp:
        self.server_custom_attributes = value
        return self

    def with_source(self, value: str) -> ApimodelsItemResp:
        self.source = value
        return self

    def with_source_item_id(self, value: str) -> ApimodelsItemResp:
        self.source_item_id = value
        return self

    def with_tags(self, value: List[str]) -> ApimodelsItemResp:
        self.tags = value
        return self

    def with_type(self, value: str) -> ApimodelsItemResp:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsItemResp:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> ApimodelsItemResp:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "inventory_id"):
            result["inventoryId"] = str(self.inventory_id)
        elif include_empty:
            result["inventoryId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "qty"):
            result["qty"] = int(self.qty)
        elif include_empty:
            result["qty"] = 0
        if hasattr(self, "server_custom_attributes"):
            result["serverCustomAttributes"] = {
                str(k0): v0 for k0, v0 in self.server_custom_attributes.items()
            }
        elif include_empty:
            result["serverCustomAttributes"] = {}
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = ""
        if hasattr(self, "source_item_id"):
            result["sourceItemId"] = str(self.source_item_id)
        elif include_empty:
            result["sourceItemId"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        custom_attributes: Dict[str, Any],
        id_: str,
        inventory_id: str,
        namespace: str,
        qty: int,
        server_custom_attributes: Dict[str, Any],
        source: str,
        source_item_id: str,
        tags: List[str],
        type_: str,
        updated_at: str,
        user_id: str,
        **kwargs,
    ) -> ApimodelsItemResp:
        instance = cls()
        instance.created_at = created_at
        instance.custom_attributes = custom_attributes
        instance.id_ = id_
        instance.inventory_id = inventory_id
        instance.namespace = namespace
        instance.qty = qty
        instance.server_custom_attributes = server_custom_attributes
        instance.source = source
        instance.source_item_id = source_item_id
        instance.tags = tags
        instance.type_ = type_
        instance.updated_at = updated_at
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsItemResp:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "inventoryId" in dict_ and dict_["inventoryId"] is not None:
            instance.inventory_id = str(dict_["inventoryId"])
        elif include_empty:
            instance.inventory_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "qty" in dict_ and dict_["qty"] is not None:
            instance.qty = int(dict_["qty"])
        elif include_empty:
            instance.qty = 0
        if (
            "serverCustomAttributes" in dict_
            and dict_["serverCustomAttributes"] is not None
        ):
            instance.server_custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["serverCustomAttributes"].items()
            }
        elif include_empty:
            instance.server_custom_attributes = {}
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = ""
        if "sourceItemId" in dict_ and dict_["sourceItemId"] is not None:
            instance.source_item_id = str(dict_["sourceItemId"])
        elif include_empty:
            instance.source_item_id = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsItemResp]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsItemResp]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsItemResp, List[ApimodelsItemResp], Dict[Any, ApimodelsItemResp]
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
            "createdAt": "created_at",
            "customAttributes": "custom_attributes",
            "id": "id_",
            "inventoryId": "inventory_id",
            "namespace": "namespace",
            "qty": "qty",
            "serverCustomAttributes": "server_custom_attributes",
            "source": "source",
            "sourceItemId": "source_item_id",
            "tags": "tags",
            "type": "type_",
            "updatedAt": "updated_at",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "customAttributes": True,
            "id": True,
            "inventoryId": True,
            "namespace": True,
            "qty": True,
            "serverCustomAttributes": True,
            "source": True,
            "sourceItemId": True,
            "tags": True,
            "type": True,
            "updatedAt": True,
            "userId": True,
        }

    # endregion static methods
