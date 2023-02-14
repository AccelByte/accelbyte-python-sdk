# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class ModelLinkHeadlessAccountRequest(Model):
    """Model link headless account request (model.LinkHeadlessAccountRequest)

    Properties:
        chosen_namespaces: (chosenNamespaces) REQUIRED List[str]

        one_time_link_code: (oneTimeLinkCode) REQUIRED str
    """

    # region fields

    chosen_namespaces: List[str]  # REQUIRED
    one_time_link_code: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_chosen_namespaces(
        self, value: List[str]
    ) -> ModelLinkHeadlessAccountRequest:
        self.chosen_namespaces = value
        return self

    def with_one_time_link_code(self, value: str) -> ModelLinkHeadlessAccountRequest:
        self.one_time_link_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "chosen_namespaces"):
            result["chosenNamespaces"] = [str(i0) for i0 in self.chosen_namespaces]
        elif include_empty:
            result["chosenNamespaces"] = []
        if hasattr(self, "one_time_link_code"):
            result["oneTimeLinkCode"] = str(self.one_time_link_code)
        elif include_empty:
            result["oneTimeLinkCode"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        chosen_namespaces: List[str],
        one_time_link_code: str,
    ) -> ModelLinkHeadlessAccountRequest:
        instance = cls()
        instance.chosen_namespaces = chosen_namespaces
        instance.one_time_link_code = one_time_link_code
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelLinkHeadlessAccountRequest:
        instance = cls()
        if not dict_:
            return instance
        if "chosenNamespaces" in dict_ and dict_["chosenNamespaces"] is not None:
            instance.chosen_namespaces = [str(i0) for i0 in dict_["chosenNamespaces"]]
        elif include_empty:
            instance.chosen_namespaces = []
        if "oneTimeLinkCode" in dict_ and dict_["oneTimeLinkCode"] is not None:
            instance.one_time_link_code = str(dict_["oneTimeLinkCode"])
        elif include_empty:
            instance.one_time_link_code = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelLinkHeadlessAccountRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelLinkHeadlessAccountRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelLinkHeadlessAccountRequest,
        List[ModelLinkHeadlessAccountRequest],
        Dict[Any, ModelLinkHeadlessAccountRequest],
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
            "chosenNamespaces": "chosen_namespaces",
            "oneTimeLinkCode": "one_time_link_code",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "chosenNamespaces": True,
            "oneTimeLinkCode": True,
        }

    # endregion static methods
