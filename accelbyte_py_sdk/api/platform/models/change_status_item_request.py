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
from ....core import StrEnum


class FeaturesToCheckEnum(StrEnum):
    CAMPAIGN = "CAMPAIGN"
    CATALOG = "CATALOG"
    DLC = "DLC"
    ENTITLEMENT = "ENTITLEMENT"
    IAP = "IAP"
    REWARD = "REWARD"


class ChangeStatusItemRequest(Model):
    """Change status item request (ChangeStatusItemRequest)

    Properties:
        features_to_check: (featuresToCheck) OPTIONAL List[Union[str, FeaturesToCheckEnum]]
    """

    # region fields

    features_to_check: List[Union[str, FeaturesToCheckEnum]]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_features_to_check(
        self, value: List[Union[str, FeaturesToCheckEnum]]
    ) -> ChangeStatusItemRequest:
        self.features_to_check = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "features_to_check"):
            result["featuresToCheck"] = [str(i0) for i0 in self.features_to_check]
        elif include_empty:
            result["featuresToCheck"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        features_to_check: Optional[List[Union[str, FeaturesToCheckEnum]]] = None,
        **kwargs,
    ) -> ChangeStatusItemRequest:
        instance = cls()
        if features_to_check is not None:
            instance.features_to_check = features_to_check
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ChangeStatusItemRequest:
        instance = cls()
        if not dict_:
            return instance
        if "featuresToCheck" in dict_ and dict_["featuresToCheck"] is not None:
            instance.features_to_check = [str(i0) for i0 in dict_["featuresToCheck"]]
        elif include_empty:
            instance.features_to_check = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ChangeStatusItemRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ChangeStatusItemRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ChangeStatusItemRequest,
        List[ChangeStatusItemRequest],
        Dict[Any, ChangeStatusItemRequest],
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
            "featuresToCheck": "features_to_check",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "featuresToCheck": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "featuresToCheck": [
                "CAMPAIGN",
                "CATALOG",
                "DLC",
                "ENTITLEMENT",
                "IAP",
                "REWARD",
            ],
        }

    # endregion static methods
