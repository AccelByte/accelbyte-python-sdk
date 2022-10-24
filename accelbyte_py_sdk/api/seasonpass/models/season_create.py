# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.16.0)

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

from ..models.excess_strategy import ExcessStrategy
from ..models.image import Image
from ..models.localization import Localization


class SeasonCreate(Model):
    """A DTO object for creating season API call. (SeasonCreate)

    Properties:
        default_required_exp: (defaultRequiredExp) REQUIRED int

        draft_store_id: (draftStoreId) REQUIRED str

        end: (end) REQUIRED str

        localizations: (localizations) REQUIRED Dict[str, Localization]

        name: (name) REQUIRED str

        start: (start) REQUIRED str

        tier_item_id: (tierItemId) REQUIRED str

        auto_claim: (autoClaim) OPTIONAL bool

        default_language: (defaultLanguage) OPTIONAL str

        excess_strategy: (excessStrategy) OPTIONAL ExcessStrategy

        images: (images) OPTIONAL List[Image]
    """

    # region fields

    default_required_exp: int  # REQUIRED
    draft_store_id: str  # REQUIRED
    end: str  # REQUIRED
    localizations: Dict[str, Localization]  # REQUIRED
    name: str  # REQUIRED
    start: str  # REQUIRED
    tier_item_id: str  # REQUIRED
    auto_claim: bool  # OPTIONAL
    default_language: str  # OPTIONAL
    excess_strategy: ExcessStrategy  # OPTIONAL
    images: List[Image]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_default_required_exp(self, value: int) -> SeasonCreate:
        self.default_required_exp = value
        return self

    def with_draft_store_id(self, value: str) -> SeasonCreate:
        self.draft_store_id = value
        return self

    def with_end(self, value: str) -> SeasonCreate:
        self.end = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> SeasonCreate:
        self.localizations = value
        return self

    def with_name(self, value: str) -> SeasonCreate:
        self.name = value
        return self

    def with_start(self, value: str) -> SeasonCreate:
        self.start = value
        return self

    def with_tier_item_id(self, value: str) -> SeasonCreate:
        self.tier_item_id = value
        return self

    def with_auto_claim(self, value: bool) -> SeasonCreate:
        self.auto_claim = value
        return self

    def with_default_language(self, value: str) -> SeasonCreate:
        self.default_language = value
        return self

    def with_excess_strategy(self, value: ExcessStrategy) -> SeasonCreate:
        self.excess_strategy = value
        return self

    def with_images(self, value: List[Image]) -> SeasonCreate:
        self.images = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "default_required_exp"):
            result["defaultRequiredExp"] = int(self.default_required_exp)
        elif include_empty:
            result["defaultRequiredExp"] = 0
        if hasattr(self, "draft_store_id"):
            result["draftStoreId"] = str(self.draft_store_id)
        elif include_empty:
            result["draftStoreId"] = ""
        if hasattr(self, "end"):
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = ""
        if hasattr(self, "localizations"):
            result["localizations"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.localizations.items()
            }
        elif include_empty:
            result["localizations"] = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = ""
        if hasattr(self, "tier_item_id"):
            result["tierItemId"] = str(self.tier_item_id)
        elif include_empty:
            result["tierItemId"] = ""
        if hasattr(self, "auto_claim"):
            result["autoClaim"] = bool(self.auto_claim)
        elif include_empty:
            result["autoClaim"] = False
        if hasattr(self, "default_language"):
            result["defaultLanguage"] = str(self.default_language)
        elif include_empty:
            result["defaultLanguage"] = ""
        if hasattr(self, "excess_strategy"):
            result["excessStrategy"] = self.excess_strategy.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["excessStrategy"] = ExcessStrategy()
        if hasattr(self, "images"):
            result["images"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.images
            ]
        elif include_empty:
            result["images"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        default_required_exp: int,
        draft_store_id: str,
        end: str,
        localizations: Dict[str, Localization],
        name: str,
        start: str,
        tier_item_id: str,
        auto_claim: Optional[bool] = None,
        default_language: Optional[str] = None,
        excess_strategy: Optional[ExcessStrategy] = None,
        images: Optional[List[Image]] = None,
    ) -> SeasonCreate:
        instance = cls()
        instance.default_required_exp = default_required_exp
        instance.draft_store_id = draft_store_id
        instance.end = end
        instance.localizations = localizations
        instance.name = name
        instance.start = start
        instance.tier_item_id = tier_item_id
        if auto_claim is not None:
            instance.auto_claim = auto_claim
        if default_language is not None:
            instance.default_language = default_language
        if excess_strategy is not None:
            instance.excess_strategy = excess_strategy
        if images is not None:
            instance.images = images
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SeasonCreate:
        instance = cls()
        if not dict_:
            return instance
        if "defaultRequiredExp" in dict_ and dict_["defaultRequiredExp"] is not None:
            instance.default_required_exp = int(dict_["defaultRequiredExp"])
        elif include_empty:
            instance.default_required_exp = 0
        if "draftStoreId" in dict_ and dict_["draftStoreId"] is not None:
            instance.draft_store_id = str(dict_["draftStoreId"])
        elif include_empty:
            instance.draft_store_id = ""
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = ""
        if "localizations" in dict_ and dict_["localizations"] is not None:
            instance.localizations = {
                str(k0): Localization.create_from_dict(v0, include_empty=include_empty)
                for k0, v0 in dict_["localizations"].items()
            }
        elif include_empty:
            instance.localizations = {}
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = ""
        if "tierItemId" in dict_ and dict_["tierItemId"] is not None:
            instance.tier_item_id = str(dict_["tierItemId"])
        elif include_empty:
            instance.tier_item_id = ""
        if "autoClaim" in dict_ and dict_["autoClaim"] is not None:
            instance.auto_claim = bool(dict_["autoClaim"])
        elif include_empty:
            instance.auto_claim = False
        if "defaultLanguage" in dict_ and dict_["defaultLanguage"] is not None:
            instance.default_language = str(dict_["defaultLanguage"])
        elif include_empty:
            instance.default_language = ""
        if "excessStrategy" in dict_ and dict_["excessStrategy"] is not None:
            instance.excess_strategy = ExcessStrategy.create_from_dict(
                dict_["excessStrategy"], include_empty=include_empty
            )
        elif include_empty:
            instance.excess_strategy = ExcessStrategy()
        if "images" in dict_ and dict_["images"] is not None:
            instance.images = [
                Image.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["images"]
            ]
        elif include_empty:
            instance.images = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SeasonCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SeasonCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[SeasonCreate, List[SeasonCreate], Dict[Any, SeasonCreate]]:
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
            "defaultRequiredExp": "default_required_exp",
            "draftStoreId": "draft_store_id",
            "end": "end",
            "localizations": "localizations",
            "name": "name",
            "start": "start",
            "tierItemId": "tier_item_id",
            "autoClaim": "auto_claim",
            "defaultLanguage": "default_language",
            "excessStrategy": "excess_strategy",
            "images": "images",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "defaultRequiredExp": True,
            "draftStoreId": True,
            "end": True,
            "localizations": True,
            "name": True,
            "start": True,
            "tierItemId": True,
            "autoClaim": False,
            "defaultLanguage": False,
            "excessStrategy": False,
            "images": False,
        }

    # endregion static methods
