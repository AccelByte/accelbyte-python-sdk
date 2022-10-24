# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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


class ModelListEmailAddressRequest(Model):
    """Model list email address request (model.ListEmailAddressRequest)

    Properties:
        list_email_address_request: (listEmailAddressRequest) REQUIRED List[str]
    """

    # region fields

    list_email_address_request: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_list_email_address_request(
        self, value: List[str]
    ) -> ModelListEmailAddressRequest:
        self.list_email_address_request = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "list_email_address_request"):
            result["listEmailAddressRequest"] = [
                str(i0) for i0 in self.list_email_address_request
            ]
        elif include_empty:
            result["listEmailAddressRequest"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        list_email_address_request: List[str],
    ) -> ModelListEmailAddressRequest:
        instance = cls()
        instance.list_email_address_request = list_email_address_request
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelListEmailAddressRequest:
        instance = cls()
        if not dict_:
            return instance
        if (
            "listEmailAddressRequest" in dict_
            and dict_["listEmailAddressRequest"] is not None
        ):
            instance.list_email_address_request = [
                str(i0) for i0 in dict_["listEmailAddressRequest"]
            ]
        elif include_empty:
            instance.list_email_address_request = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelListEmailAddressRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelListEmailAddressRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelListEmailAddressRequest,
        List[ModelListEmailAddressRequest],
        Dict[Any, ModelListEmailAddressRequest],
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
            "listEmailAddressRequest": "list_email_address_request",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "listEmailAddressRequest": True,
        }

    # endregion static methods
