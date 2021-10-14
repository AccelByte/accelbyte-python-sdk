# Auto-generated at 2021-10-14T22:17:10.877432+08:00
# from: Justice Iam Service (4.1.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

    list_email_address_request: List[str]                                                          # REQUIRED

    # endregion fields

    # region with_x methods

    def with_list_email_address_request(self, value: List[str]) -> ModelListEmailAddressRequest:
        self.list_email_address_request = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "list_email_address_request") and self.list_email_address_request:
            result["listEmailAddressRequest"] = [str(i0) for i0 in self.list_email_address_request]
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelListEmailAddressRequest:
        instance = cls()
        if not dict_:
            return instance
        if "listEmailAddressRequest" in dict_ and dict_["listEmailAddressRequest"] is not None:
            instance.list_email_address_request = [str(i0) for i0 in dict_["listEmailAddressRequest"]]
        elif include_empty:
            instance.list_email_address_request = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "listEmailAddressRequest": "list_email_address_request",
        }

    # endregion static methods
