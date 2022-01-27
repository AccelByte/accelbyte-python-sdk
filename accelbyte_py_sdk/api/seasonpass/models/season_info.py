# justice-seasonpass-service (1.7.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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

from ..models.excess_strategy import ExcessStrategy
from ..models.image import Image
from ..models.localization import Localization


class SeasonInfo(Model):
    """A DTO object for season info. (SeasonInfo)

    Properties:
        auto_claim: (autoClaim) REQUIRED bool

        created_at: (createdAt) REQUIRED str

        default_language: (defaultLanguage) REQUIRED str

        default_required_exp: (defaultRequiredExp) REQUIRED int

        draft_store_id: (draftStoreId) REQUIRED str

        end: (end) REQUIRED str

        excess_strategy: (excessStrategy) REQUIRED ExcessStrategy

        id_: (id) REQUIRED str

        localizations: (localizations) REQUIRED Dict[str, Localization]

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        start: (start) REQUIRED str

        status: (status) REQUIRED str

        tier_item_id: (tierItemId) REQUIRED str

        tier_item_name: (tierItemName) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        images: (images) OPTIONAL List[Image]

        pass_codes: (passCodes) OPTIONAL List[str]

        published_at: (publishedAt) OPTIONAL str
    """

    # region fields

    auto_claim: bool                                                                               # REQUIRED
    created_at: str                                                                                # REQUIRED
    default_language: str                                                                          # REQUIRED
    default_required_exp: int                                                                      # REQUIRED
    draft_store_id: str                                                                            # REQUIRED
    end: str                                                                                       # REQUIRED
    excess_strategy: ExcessStrategy                                                                # REQUIRED
    id_: str                                                                                       # REQUIRED
    localizations: Dict[str, Localization]                                                         # REQUIRED
    name: str                                                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED
    start: str                                                                                     # REQUIRED
    status: str                                                                                    # REQUIRED
    tier_item_id: str                                                                              # REQUIRED
    tier_item_name: str                                                                            # REQUIRED
    updated_at: str                                                                                # REQUIRED
    images: List[Image]                                                                            # OPTIONAL
    pass_codes: List[str]                                                                          # OPTIONAL
    published_at: str                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auto_claim(self, value: bool) -> SeasonInfo:
        self.auto_claim = value
        return self

    def with_created_at(self, value: str) -> SeasonInfo:
        self.created_at = value
        return self

    def with_default_language(self, value: str) -> SeasonInfo:
        self.default_language = value
        return self

    def with_default_required_exp(self, value: int) -> SeasonInfo:
        self.default_required_exp = value
        return self

    def with_draft_store_id(self, value: str) -> SeasonInfo:
        self.draft_store_id = value
        return self

    def with_end(self, value: str) -> SeasonInfo:
        self.end = value
        return self

    def with_excess_strategy(self, value: ExcessStrategy) -> SeasonInfo:
        self.excess_strategy = value
        return self

    def with_id(self, value: str) -> SeasonInfo:
        self.id_ = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> SeasonInfo:
        self.localizations = value
        return self

    def with_name(self, value: str) -> SeasonInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> SeasonInfo:
        self.namespace = value
        return self

    def with_start(self, value: str) -> SeasonInfo:
        self.start = value
        return self

    def with_status(self, value: str) -> SeasonInfo:
        self.status = value
        return self

    def with_tier_item_id(self, value: str) -> SeasonInfo:
        self.tier_item_id = value
        return self

    def with_tier_item_name(self, value: str) -> SeasonInfo:
        self.tier_item_name = value
        return self

    def with_updated_at(self, value: str) -> SeasonInfo:
        self.updated_at = value
        return self

    def with_images(self, value: List[Image]) -> SeasonInfo:
        self.images = value
        return self

    def with_pass_codes(self, value: List[str]) -> SeasonInfo:
        self.pass_codes = value
        return self

    def with_published_at(self, value: str) -> SeasonInfo:
        self.published_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auto_claim"):
            result["autoClaim"] = bool(self.auto_claim)
        elif include_empty:
            result["autoClaim"] = bool()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "default_language"):
            result["defaultLanguage"] = str(self.default_language)
        elif include_empty:
            result["defaultLanguage"] = str()
        if hasattr(self, "default_required_exp"):
            result["defaultRequiredExp"] = int(self.default_required_exp)
        elif include_empty:
            result["defaultRequiredExp"] = int()
        if hasattr(self, "draft_store_id"):
            result["draftStoreId"] = str(self.draft_store_id)
        elif include_empty:
            result["draftStoreId"] = str()
        if hasattr(self, "end"):
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = str()
        if hasattr(self, "excess_strategy"):
            result["excessStrategy"] = self.excess_strategy.to_dict(include_empty=include_empty)
        elif include_empty:
            result["excessStrategy"] = ExcessStrategy()
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "localizations"):
            result["localizations"] = {str(k0): v0.to_dict(include_empty=include_empty) for k0, v0 in self.localizations.items()}
        elif include_empty:
            result["localizations"] = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "tier_item_id"):
            result["tierItemId"] = str(self.tier_item_id)
        elif include_empty:
            result["tierItemId"] = str()
        if hasattr(self, "tier_item_name"):
            result["tierItemName"] = str(self.tier_item_name)
        elif include_empty:
            result["tierItemName"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "images"):
            result["images"] = [i0.to_dict(include_empty=include_empty) for i0 in self.images]
        elif include_empty:
            result["images"] = []
        if hasattr(self, "pass_codes"):
            result["passCodes"] = [str(i0) for i0 in self.pass_codes]
        elif include_empty:
            result["passCodes"] = []
        if hasattr(self, "published_at"):
            result["publishedAt"] = str(self.published_at)
        elif include_empty:
            result["publishedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auto_claim: bool,
        created_at: str,
        default_language: str,
        default_required_exp: int,
        draft_store_id: str,
        end: str,
        excess_strategy: ExcessStrategy,
        id_: str,
        localizations: Dict[str, Localization],
        name: str,
        namespace: str,
        start: str,
        status: str,
        tier_item_id: str,
        tier_item_name: str,
        updated_at: str,
        images: Optional[List[Image]] = None,
        pass_codes: Optional[List[str]] = None,
        published_at: Optional[str] = None,
    ) -> SeasonInfo:
        instance = cls()
        instance.auto_claim = auto_claim
        instance.created_at = created_at
        instance.default_language = default_language
        instance.default_required_exp = default_required_exp
        instance.draft_store_id = draft_store_id
        instance.end = end
        instance.excess_strategy = excess_strategy
        instance.id_ = id_
        instance.localizations = localizations
        instance.name = name
        instance.namespace = namespace
        instance.start = start
        instance.status = status
        instance.tier_item_id = tier_item_id
        instance.tier_item_name = tier_item_name
        instance.updated_at = updated_at
        if images is not None:
            instance.images = images
        if pass_codes is not None:
            instance.pass_codes = pass_codes
        if published_at is not None:
            instance.published_at = published_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SeasonInfo:
        instance = cls()
        if not dict_:
            return instance
        if "autoClaim" in dict_ and dict_["autoClaim"] is not None:
            instance.auto_claim = bool(dict_["autoClaim"])
        elif include_empty:
            instance.auto_claim = bool()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "defaultLanguage" in dict_ and dict_["defaultLanguage"] is not None:
            instance.default_language = str(dict_["defaultLanguage"])
        elif include_empty:
            instance.default_language = str()
        if "defaultRequiredExp" in dict_ and dict_["defaultRequiredExp"] is not None:
            instance.default_required_exp = int(dict_["defaultRequiredExp"])
        elif include_empty:
            instance.default_required_exp = int()
        if "draftStoreId" in dict_ and dict_["draftStoreId"] is not None:
            instance.draft_store_id = str(dict_["draftStoreId"])
        elif include_empty:
            instance.draft_store_id = str()
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = str()
        if "excessStrategy" in dict_ and dict_["excessStrategy"] is not None:
            instance.excess_strategy = ExcessStrategy.create_from_dict(dict_["excessStrategy"], include_empty=include_empty)
        elif include_empty:
            instance.excess_strategy = ExcessStrategy()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "localizations" in dict_ and dict_["localizations"] is not None:
            instance.localizations = {str(k0): Localization.create_from_dict(v0, include_empty=include_empty) for k0, v0 in dict_["localizations"].items()}
        elif include_empty:
            instance.localizations = {}
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "tierItemId" in dict_ and dict_["tierItemId"] is not None:
            instance.tier_item_id = str(dict_["tierItemId"])
        elif include_empty:
            instance.tier_item_id = str()
        if "tierItemName" in dict_ and dict_["tierItemName"] is not None:
            instance.tier_item_name = str(dict_["tierItemName"])
        elif include_empty:
            instance.tier_item_name = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "images" in dict_ and dict_["images"] is not None:
            instance.images = [Image.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["images"]]
        elif include_empty:
            instance.images = []
        if "passCodes" in dict_ and dict_["passCodes"] is not None:
            instance.pass_codes = [str(i0) for i0 in dict_["passCodes"]]
        elif include_empty:
            instance.pass_codes = []
        if "publishedAt" in dict_ and dict_["publishedAt"] is not None:
            instance.published_at = str(dict_["publishedAt"])
        elif include_empty:
            instance.published_at = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, SeasonInfo]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[SeasonInfo]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[SeasonInfo, List[SeasonInfo]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "autoClaim": "auto_claim",
            "createdAt": "created_at",
            "defaultLanguage": "default_language",
            "defaultRequiredExp": "default_required_exp",
            "draftStoreId": "draft_store_id",
            "end": "end",
            "excessStrategy": "excess_strategy",
            "id": "id_",
            "localizations": "localizations",
            "name": "name",
            "namespace": "namespace",
            "start": "start",
            "status": "status",
            "tierItemId": "tier_item_id",
            "tierItemName": "tier_item_name",
            "updatedAt": "updated_at",
            "images": "images",
            "passCodes": "pass_codes",
            "publishedAt": "published_at",
        }

    # endregion static methods
