# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session Service

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


class ModelsDSMConfigRecord(Model):
    """Models DSM config record (models.DSMConfigRecord)

    Properties:
        claim_timeout: (claim_timeout) REQUIRED int

        created_at: (createdAt) REQUIRED str

        creation_timeout: (creation_timeout) REQUIRED int

        namespace: (namespace) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    claim_timeout: int  # REQUIRED
    created_at: str  # REQUIRED
    creation_timeout: int  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_claim_timeout(self, value: int) -> ModelsDSMConfigRecord:
        self.claim_timeout = value
        return self

    def with_created_at(self, value: str) -> ModelsDSMConfigRecord:
        self.created_at = value
        return self

    def with_creation_timeout(self, value: int) -> ModelsDSMConfigRecord:
        self.creation_timeout = value
        return self

    def with_namespace(self, value: str) -> ModelsDSMConfigRecord:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> ModelsDSMConfigRecord:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "claim_timeout"):
            result["claim_timeout"] = int(self.claim_timeout)
        elif include_empty:
            result["claim_timeout"] = 0
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "creation_timeout"):
            result["creation_timeout"] = int(self.creation_timeout)
        elif include_empty:
            result["creation_timeout"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        claim_timeout: int,
        created_at: str,
        creation_timeout: int,
        namespace: str,
        updated_at: str,
        **kwargs,
    ) -> ModelsDSMConfigRecord:
        instance = cls()
        instance.claim_timeout = claim_timeout
        instance.created_at = created_at
        instance.creation_timeout = creation_timeout
        instance.namespace = namespace
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDSMConfigRecord:
        instance = cls()
        if not dict_:
            return instance
        if "claim_timeout" in dict_ and dict_["claim_timeout"] is not None:
            instance.claim_timeout = int(dict_["claim_timeout"])
        elif include_empty:
            instance.claim_timeout = 0
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "creation_timeout" in dict_ and dict_["creation_timeout"] is not None:
            instance.creation_timeout = int(dict_["creation_timeout"])
        elif include_empty:
            instance.creation_timeout = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDSMConfigRecord]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDSMConfigRecord]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDSMConfigRecord,
        List[ModelsDSMConfigRecord],
        Dict[Any, ModelsDSMConfigRecord],
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
            "claim_timeout": "claim_timeout",
            "createdAt": "created_at",
            "creation_timeout": "creation_timeout",
            "namespace": "namespace",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "claim_timeout": True,
            "createdAt": True,
            "creation_timeout": True,
            "namespace": True,
            "updatedAt": True,
        }

    # endregion static methods
