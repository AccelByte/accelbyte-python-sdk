# justice-iam-service (4.9.0)

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


class ClientmodelClientUpdateSecretRequest(Model):
    """Clientmodel client update secret request (clientmodel.ClientUpdateSecretRequest)

    Properties:
        new_secret: (NewSecret) REQUIRED str
    """

    # region fields

    new_secret: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_new_secret(self, value: str) -> ClientmodelClientUpdateSecretRequest:
        self.new_secret = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "new_secret"):
            result["NewSecret"] = str(self.new_secret)
        elif include_empty:
            result["NewSecret"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        new_secret: str,
    ) -> ClientmodelClientUpdateSecretRequest:
        instance = cls()
        instance.new_secret = new_secret
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ClientmodelClientUpdateSecretRequest:
        instance = cls()
        if not dict_:
            return instance
        if "NewSecret" in dict_ and dict_["NewSecret"] is not None:
            instance.new_secret = str(dict_["NewSecret"])
        elif include_empty:
            instance.new_secret = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "NewSecret": "new_secret",
        }

    # endregion static methods
