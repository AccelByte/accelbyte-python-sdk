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

from ..models.model_account_progression_info import ModelAccountProgressionInfo


class ModelGetLinkHeadlessAccountConflictResponse(Model):
    """Model get link headless account conflict response (model.GetLinkHeadlessAccountConflictResponse)

    Properties:
        platform_already_linked: (platformAlreadyLinked) REQUIRED bool

        platform_id: (platformId) REQUIRED str

        platform_link_conflict: (platformLinkConflict) REQUIRED bool

        current_account: (currentAccount) OPTIONAL ModelAccountProgressionInfo

        headless_account: (headlessAccount) OPTIONAL ModelAccountProgressionInfo
    """

    # region fields

    platform_already_linked: bool  # REQUIRED
    platform_id: str  # REQUIRED
    platform_link_conflict: bool  # REQUIRED
    current_account: ModelAccountProgressionInfo  # OPTIONAL
    headless_account: ModelAccountProgressionInfo  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_platform_already_linked(
        self, value: bool
    ) -> ModelGetLinkHeadlessAccountConflictResponse:
        self.platform_already_linked = value
        return self

    def with_platform_id(
        self, value: str
    ) -> ModelGetLinkHeadlessAccountConflictResponse:
        self.platform_id = value
        return self

    def with_platform_link_conflict(
        self, value: bool
    ) -> ModelGetLinkHeadlessAccountConflictResponse:
        self.platform_link_conflict = value
        return self

    def with_current_account(
        self, value: ModelAccountProgressionInfo
    ) -> ModelGetLinkHeadlessAccountConflictResponse:
        self.current_account = value
        return self

    def with_headless_account(
        self, value: ModelAccountProgressionInfo
    ) -> ModelGetLinkHeadlessAccountConflictResponse:
        self.headless_account = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_already_linked"):
            result["platformAlreadyLinked"] = bool(self.platform_already_linked)
        elif include_empty:
            result["platformAlreadyLinked"] = False
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "platform_link_conflict"):
            result["platformLinkConflict"] = bool(self.platform_link_conflict)
        elif include_empty:
            result["platformLinkConflict"] = False
        if hasattr(self, "current_account"):
            result["currentAccount"] = self.current_account.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["currentAccount"] = ModelAccountProgressionInfo()
        if hasattr(self, "headless_account"):
            result["headlessAccount"] = self.headless_account.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["headlessAccount"] = ModelAccountProgressionInfo()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_already_linked: bool,
        platform_id: str,
        platform_link_conflict: bool,
        current_account: Optional[ModelAccountProgressionInfo] = None,
        headless_account: Optional[ModelAccountProgressionInfo] = None,
    ) -> ModelGetLinkHeadlessAccountConflictResponse:
        instance = cls()
        instance.platform_already_linked = platform_already_linked
        instance.platform_id = platform_id
        instance.platform_link_conflict = platform_link_conflict
        if current_account is not None:
            instance.current_account = current_account
        if headless_account is not None:
            instance.headless_account = headless_account
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelGetLinkHeadlessAccountConflictResponse:
        instance = cls()
        if not dict_:
            return instance
        if (
            "platformAlreadyLinked" in dict_
            and dict_["platformAlreadyLinked"] is not None
        ):
            instance.platform_already_linked = bool(dict_["platformAlreadyLinked"])
        elif include_empty:
            instance.platform_already_linked = False
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if (
            "platformLinkConflict" in dict_
            and dict_["platformLinkConflict"] is not None
        ):
            instance.platform_link_conflict = bool(dict_["platformLinkConflict"])
        elif include_empty:
            instance.platform_link_conflict = False
        if "currentAccount" in dict_ and dict_["currentAccount"] is not None:
            instance.current_account = ModelAccountProgressionInfo.create_from_dict(
                dict_["currentAccount"], include_empty=include_empty
            )
        elif include_empty:
            instance.current_account = ModelAccountProgressionInfo()
        if "headlessAccount" in dict_ and dict_["headlessAccount"] is not None:
            instance.headless_account = ModelAccountProgressionInfo.create_from_dict(
                dict_["headlessAccount"], include_empty=include_empty
            )
        elif include_empty:
            instance.headless_account = ModelAccountProgressionInfo()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelGetLinkHeadlessAccountConflictResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelGetLinkHeadlessAccountConflictResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelGetLinkHeadlessAccountConflictResponse,
        List[ModelGetLinkHeadlessAccountConflictResponse],
        Dict[Any, ModelGetLinkHeadlessAccountConflictResponse],
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
            "platformAlreadyLinked": "platform_already_linked",
            "platformId": "platform_id",
            "platformLinkConflict": "platform_link_conflict",
            "currentAccount": "current_account",
            "headlessAccount": "headless_account",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platformAlreadyLinked": True,
            "platformId": True,
            "platformLinkConflict": True,
            "currentAccount": False,
            "headlessAccount": False,
        }

    # endregion static methods
