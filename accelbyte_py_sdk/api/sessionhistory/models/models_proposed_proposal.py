# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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


class ModelsProposedProposal(Model):
    """Models proposed proposal (models.ProposedProposal)

    Properties:
        backfill_id: (BackfillID) OPTIONAL str

        proposal_id: (ProposalID) OPTIONAL str

        status: (Status) OPTIONAL str
    """

    # region fields

    backfill_id: str  # OPTIONAL
    proposal_id: str  # OPTIONAL
    status: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_backfill_id(self, value: str) -> ModelsProposedProposal:
        self.backfill_id = value
        return self

    def with_proposal_id(self, value: str) -> ModelsProposedProposal:
        self.proposal_id = value
        return self

    def with_status(self, value: str) -> ModelsProposedProposal:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "backfill_id"):
            result["BackfillID"] = str(self.backfill_id)
        elif include_empty:
            result["BackfillID"] = ""
        if hasattr(self, "proposal_id"):
            result["ProposalID"] = str(self.proposal_id)
        elif include_empty:
            result["ProposalID"] = ""
        if hasattr(self, "status"):
            result["Status"] = str(self.status)
        elif include_empty:
            result["Status"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        backfill_id: Optional[str] = None,
        proposal_id: Optional[str] = None,
        status: Optional[str] = None,
        **kwargs,
    ) -> ModelsProposedProposal:
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
    ) -> ModelsProposedProposal:
        instance = cls()
        if not dict_:
            return instance
        if "BackfillID" in dict_ and dict_["BackfillID"] is not None:
            instance.backfill_id = str(dict_["BackfillID"])
        elif include_empty:
            instance.backfill_id = ""
        if "ProposalID" in dict_ and dict_["ProposalID"] is not None:
            instance.proposal_id = str(dict_["ProposalID"])
        elif include_empty:
            instance.proposal_id = ""
        if "Status" in dict_ and dict_["Status"] is not None:
            instance.status = str(dict_["Status"])
        elif include_empty:
            instance.status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsProposedProposal]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsProposedProposal]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsProposedProposal,
        List[ModelsProposedProposal],
        Dict[Any, ModelsProposedProposal],
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
            "BackfillID": "backfill_id",
            "ProposalID": "proposal_id",
            "Status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "BackfillID": False,
            "ProposalID": False,
            "Status": False,
        }

    # endregion static methods
