# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.4.2)

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


class KeyInfo(Model):
    """Key info (KeyInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        key_file: (keyFile) REQUIRED str

        key_group_id: (keyGroupId) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        value: (value) REQUIRED str

        acquire_order_no: (acquireOrderNo) OPTIONAL str

        acquire_user_id: (acquireUserId) OPTIONAL str
    """

    # region fields

    created_at: str                                                                                # REQUIRED
    id_: str                                                                                       # REQUIRED
    key_file: str                                                                                  # REQUIRED
    key_group_id: str                                                                              # REQUIRED
    namespace: str                                                                                 # REQUIRED
    status: str                                                                                    # REQUIRED
    updated_at: str                                                                                # REQUIRED
    value: str                                                                                     # REQUIRED
    acquire_order_no: str                                                                          # OPTIONAL
    acquire_user_id: str                                                                           # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> KeyInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> KeyInfo:
        self.id_ = value
        return self

    def with_key_file(self, value: str) -> KeyInfo:
        self.key_file = value
        return self

    def with_key_group_id(self, value: str) -> KeyInfo:
        self.key_group_id = value
        return self

    def with_namespace(self, value: str) -> KeyInfo:
        self.namespace = value
        return self

    def with_status(self, value: str) -> KeyInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> KeyInfo:
        self.updated_at = value
        return self

    def with_value(self, value: str) -> KeyInfo:
        self.value = value
        return self

    def with_acquire_order_no(self, value: str) -> KeyInfo:
        self.acquire_order_no = value
        return self

    def with_acquire_user_id(self, value: str) -> KeyInfo:
        self.acquire_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "key_file"):
            result["keyFile"] = str(self.key_file)
        elif include_empty:
            result["keyFile"] = str()
        if hasattr(self, "key_group_id"):
            result["keyGroupId"] = str(self.key_group_id)
        elif include_empty:
            result["keyGroupId"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "value"):
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = str()
        if hasattr(self, "acquire_order_no"):
            result["acquireOrderNo"] = str(self.acquire_order_no)
        elif include_empty:
            result["acquireOrderNo"] = str()
        if hasattr(self, "acquire_user_id"):
            result["acquireUserId"] = str(self.acquire_user_id)
        elif include_empty:
            result["acquireUserId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        id_: str,
        key_file: str,
        key_group_id: str,
        namespace: str,
        status: str,
        updated_at: str,
        value: str,
        acquire_order_no: Optional[str] = None,
        acquire_user_id: Optional[str] = None,
    ) -> KeyInfo:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.key_file = key_file
        instance.key_group_id = key_group_id
        instance.namespace = namespace
        instance.status = status
        instance.updated_at = updated_at
        instance.value = value
        if acquire_order_no is not None:
            instance.acquire_order_no = acquire_order_no
        if acquire_user_id is not None:
            instance.acquire_user_id = acquire_user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> KeyInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "keyFile" in dict_ and dict_["keyFile"] is not None:
            instance.key_file = str(dict_["keyFile"])
        elif include_empty:
            instance.key_file = str()
        if "keyGroupId" in dict_ and dict_["keyGroupId"] is not None:
            instance.key_group_id = str(dict_["keyGroupId"])
        elif include_empty:
            instance.key_group_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = str()
        if "acquireOrderNo" in dict_ and dict_["acquireOrderNo"] is not None:
            instance.acquire_order_no = str(dict_["acquireOrderNo"])
        elif include_empty:
            instance.acquire_order_no = str()
        if "acquireUserId" in dict_ and dict_["acquireUserId"] is not None:
            instance.acquire_user_id = str(dict_["acquireUserId"])
        elif include_empty:
            instance.acquire_user_id = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, KeyInfo]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[KeyInfo]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[KeyInfo, List[KeyInfo]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "createdAt": "created_at",
            "id": "id_",
            "keyFile": "key_file",
            "keyGroupId": "key_group_id",
            "namespace": "namespace",
            "status": "status",
            "updatedAt": "updated_at",
            "value": "value",
            "acquireOrderNo": "acquire_order_no",
            "acquireUserId": "acquire_user_id",
        }

    # endregion static methods
