# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelIncreaseLimitFormRequest(Model):
    """Apimodel increase limit form request (apimodel.IncreaseLimitFormRequest)

    Properties:
        client_email: (clientEmail) REQUIRED str

        request_reason: (requestReason) REQUIRED str

        preferred_limit_replica: (preferredLimitReplica) OPTIONAL int
    """

    # region fields

    client_email: str  # REQUIRED
    request_reason: str  # REQUIRED
    preferred_limit_replica: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_client_email(self, value: str) -> ApimodelIncreaseLimitFormRequest:
        self.client_email = value
        return self

    def with_request_reason(self, value: str) -> ApimodelIncreaseLimitFormRequest:
        self.request_reason = value
        return self

    def with_preferred_limit_replica(
        self, value: int
    ) -> ApimodelIncreaseLimitFormRequest:
        self.preferred_limit_replica = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "client_email"):
            result["clientEmail"] = str(self.client_email)
        elif include_empty:
            result["clientEmail"] = ""
        if hasattr(self, "request_reason"):
            result["requestReason"] = str(self.request_reason)
        elif include_empty:
            result["requestReason"] = ""
        if hasattr(self, "preferred_limit_replica"):
            result["preferredLimitReplica"] = int(self.preferred_limit_replica)
        elif include_empty:
            result["preferredLimitReplica"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_email: str,
        request_reason: str,
        preferred_limit_replica: Optional[int] = None,
        **kwargs,
    ) -> ApimodelIncreaseLimitFormRequest:
        instance = cls()
        instance.client_email = client_email
        instance.request_reason = request_reason
        if preferred_limit_replica is not None:
            instance.preferred_limit_replica = preferred_limit_replica
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelIncreaseLimitFormRequest:
        instance = cls()
        if not dict_:
            return instance
        if "clientEmail" in dict_ and dict_["clientEmail"] is not None:
            instance.client_email = str(dict_["clientEmail"])
        elif include_empty:
            instance.client_email = ""
        if "requestReason" in dict_ and dict_["requestReason"] is not None:
            instance.request_reason = str(dict_["requestReason"])
        elif include_empty:
            instance.request_reason = ""
        if (
            "preferredLimitReplica" in dict_
            and dict_["preferredLimitReplica"] is not None
        ):
            instance.preferred_limit_replica = int(dict_["preferredLimitReplica"])
        elif include_empty:
            instance.preferred_limit_replica = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelIncreaseLimitFormRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelIncreaseLimitFormRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelIncreaseLimitFormRequest,
        List[ApimodelIncreaseLimitFormRequest],
        Dict[Any, ApimodelIncreaseLimitFormRequest],
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
            "clientEmail": "client_email",
            "requestReason": "request_reason",
            "preferredLimitReplica": "preferred_limit_replica",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "clientEmail": True,
            "requestReason": True,
            "preferredLimitReplica": False,
        }

    # endregion static methods
