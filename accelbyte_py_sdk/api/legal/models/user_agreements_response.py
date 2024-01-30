# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Legal Service

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

from ..models.retrieve_accepted_agreement_response import (
    RetrieveAcceptedAgreementResponse,
)


class UserAgreementsResponse(Model):
    """A DTO object for user agreements response (UserAgreementsResponse)

    Properties:
        agreements: (agreements) OPTIONAL List[RetrieveAcceptedAgreementResponse]

        user_id: (userId) OPTIONAL str
    """

    # region fields

    agreements: List[RetrieveAcceptedAgreementResponse]  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_agreements(
        self, value: List[RetrieveAcceptedAgreementResponse]
    ) -> UserAgreementsResponse:
        self.agreements = value
        return self

    def with_user_id(self, value: str) -> UserAgreementsResponse:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "agreements"):
            result["agreements"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.agreements
            ]
        elif include_empty:
            result["agreements"] = []
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        agreements: Optional[List[RetrieveAcceptedAgreementResponse]] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> UserAgreementsResponse:
        instance = cls()
        if agreements is not None:
            instance.agreements = agreements
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserAgreementsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "agreements" in dict_ and dict_["agreements"] is not None:
            instance.agreements = [
                RetrieveAcceptedAgreementResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["agreements"]
            ]
        elif include_empty:
            instance.agreements = []
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserAgreementsResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserAgreementsResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        UserAgreementsResponse,
        List[UserAgreementsResponse],
        Dict[Any, UserAgreementsResponse],
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
            "agreements": "agreements",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "agreements": False,
            "userId": False,
        }

    # endregion static methods
