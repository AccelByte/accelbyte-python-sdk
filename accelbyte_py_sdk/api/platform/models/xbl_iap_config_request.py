# Auto-generated at 2021-09-21T14:10:38.787879+08:00
# from: Justice Platform Service (3.24.0)

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


class XblIAPConfigRequest(Model):
    """Xbl IAP config request

    Properties:
        relying_party_cert: (relyingPartyCert) REQUIRED str
    """

    # region fields

    relying_party_cert: str                                                                        # REQUIRED

    # endregion fields

    # region with_x methods

    def with_relying_party_cert(self, value: str) -> XblIAPConfigRequest:
        self.relying_party_cert = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "relying_party_cert") and self.relying_party_cert:
            result["relyingPartyCert"] = str(self.relying_party_cert)
        elif include_empty:
            result["relyingPartyCert"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        relying_party_cert: str,
    ) -> XblIAPConfigRequest:
        instance = cls()
        instance.relying_party_cert = relying_party_cert
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> XblIAPConfigRequest:
        instance = cls()
        if "relyingPartyCert" in dict_ and dict_["relyingPartyCert"] is not None:
            instance.relying_party_cert = str(dict_["relyingPartyCert"])
        elif include_empty:
            instance.relying_party_cert = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "relyingPartyCert": "relying_party_cert",
        }

    # endregion static methods
