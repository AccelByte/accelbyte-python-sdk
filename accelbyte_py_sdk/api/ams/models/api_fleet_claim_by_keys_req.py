# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class ApiFleetClaimByKeysReq(Model):
    """Api fleet claim by keys req (api.FleetClaimByKeysReq)

    Properties:
        claim_keys: (claimKeys) REQUIRED List[str]

        regions: (regions) REQUIRED List[str]

        session_id: (sessionId) REQUIRED str
    """

    # region fields

    claim_keys: List[str]  # REQUIRED
    regions: List[str]  # REQUIRED
    session_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_claim_keys(self, value: List[str]) -> ApiFleetClaimByKeysReq:
        self.claim_keys = value
        return self

    def with_regions(self, value: List[str]) -> ApiFleetClaimByKeysReq:
        self.regions = value
        return self

    def with_session_id(self, value: str) -> ApiFleetClaimByKeysReq:
        self.session_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "claim_keys"):
            result["claimKeys"] = [str(i0) for i0 in self.claim_keys]
        elif include_empty:
            result["claimKeys"] = []
        if hasattr(self, "regions"):
            result["regions"] = [str(i0) for i0 in self.regions]
        elif include_empty:
            result["regions"] = []
        if hasattr(self, "session_id"):
            result["sessionId"] = str(self.session_id)
        elif include_empty:
            result["sessionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, claim_keys: List[str], regions: List[str], session_id: str, **kwargs
    ) -> ApiFleetClaimByKeysReq:
        instance = cls()
        instance.claim_keys = claim_keys
        instance.regions = regions
        instance.session_id = session_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetClaimByKeysReq:
        instance = cls()
        if not dict_:
            return instance
        if "claimKeys" in dict_ and dict_["claimKeys"] is not None:
            instance.claim_keys = [str(i0) for i0 in dict_["claimKeys"]]
        elif include_empty:
            instance.claim_keys = []
        if "regions" in dict_ and dict_["regions"] is not None:
            instance.regions = [str(i0) for i0 in dict_["regions"]]
        elif include_empty:
            instance.regions = []
        if "sessionId" in dict_ and dict_["sessionId"] is not None:
            instance.session_id = str(dict_["sessionId"])
        elif include_empty:
            instance.session_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetClaimByKeysReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetClaimByKeysReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetClaimByKeysReq,
        List[ApiFleetClaimByKeysReq],
        Dict[Any, ApiFleetClaimByKeysReq],
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
            "claimKeys": "claim_keys",
            "regions": "regions",
            "sessionId": "session_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "claimKeys": True,
            "regions": True,
            "sessionId": True,
        }

    # endregion static methods
