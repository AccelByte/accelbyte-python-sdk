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


class EntitlementConfigInfo(Model):
    """Entitlement config info (EntitlementConfigInfo)

    Properties:
        enable_entitlement_origin_feature: (enableEntitlementOriginFeature) OPTIONAL bool

        namespace: (namespace) OPTIONAL str
    """

    # region fields

    enable_entitlement_origin_feature: bool  # OPTIONAL
    namespace: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_enable_entitlement_origin_feature(
        self, value: bool
    ) -> EntitlementConfigInfo:
        self.enable_entitlement_origin_feature = value
        return self

    def with_namespace(self, value: str) -> EntitlementConfigInfo:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enable_entitlement_origin_feature"):
            result["enableEntitlementOriginFeature"] = bool(
                self.enable_entitlement_origin_feature
            )
        elif include_empty:
            result["enableEntitlementOriginFeature"] = False
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enable_entitlement_origin_feature: Optional[bool] = None,
        namespace: Optional[str] = None,
        **kwargs,
    ) -> EntitlementConfigInfo:
        instance = cls()
        if enable_entitlement_origin_feature is not None:
            instance.enable_entitlement_origin_feature = (
                enable_entitlement_origin_feature
            )
        if namespace is not None:
            instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if (
            "enableEntitlementOriginFeature" in dict_
            and dict_["enableEntitlementOriginFeature"] is not None
        ):
            instance.enable_entitlement_origin_feature = bool(
                dict_["enableEntitlementOriginFeature"]
            )
        elif include_empty:
            instance.enable_entitlement_origin_feature = False
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementConfigInfo,
        List[EntitlementConfigInfo],
        Dict[Any, EntitlementConfigInfo],
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
            "enableEntitlementOriginFeature": "enable_entitlement_origin_feature",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "enableEntitlementOriginFeature": False,
            "namespace": False,
        }

    # endregion static methods
