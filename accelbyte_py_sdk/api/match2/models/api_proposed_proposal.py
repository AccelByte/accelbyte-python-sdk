# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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


class ApiProposedProposal(Model):
    """Api proposed proposal (api.ProposedProposal)

    Properties:
        backfill_id: (backfillID) OPTIONAL str

        proposal_id: (proposalID) OPTIONAL str

        status: (status) OPTIONAL str
    """

    # region fields

    backfill_id: str  # OPTIONAL
    proposal_id: str  # OPTIONAL
    status: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_backfill_id(self, value: str) -> ApiProposedProposal:
        self.backfill_id = value
        return self

    def with_proposal_id(self, value: str) -> ApiProposedProposal:
        self.proposal_id = value
        return self

    def with_status(self, value: str) -> ApiProposedProposal:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "backfill_id"):
            result["backfillID"] = str(self.backfill_id)
        elif include_empty:
            result["backfillID"] = ""
        if hasattr(self, "proposal_id"):
            result["proposalID"] = str(self.proposal_id)
        elif include_empty:
            result["proposalID"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        backfill_id: Optional[str] = None,
        proposal_id: Optional[str] = None,
        status: Optional[str] = None,
    ) -> ApiProposedProposal:
        instance = cls()
        if backfill_id is not None:
            instance.backfill_id = backfill_id
        if proposal_id is not None:
            instance.proposal_id = proposal_id
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiProposedProposal:
        instance = cls()
        if not dict_:
            return instance
        if "backfillID" in dict_ and dict_["backfillID"] is not None:
            instance.backfill_id = str(dict_["backfillID"])
        elif include_empty:
            instance.backfill_id = ""
        if "proposalID" in dict_ and dict_["proposalID"] is not None:
            instance.proposal_id = str(dict_["proposalID"])
        elif include_empty:
            instance.proposal_id = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiProposedProposal]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiProposedProposal]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiProposedProposal, List[ApiProposedProposal], Dict[Any, ApiProposedProposal]
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
            "backfillID": "backfill_id",
            "proposalID": "proposal_id",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "backfillID": False,
            "proposalID": False,
            "status": False,
        }

    # endregion static methods
