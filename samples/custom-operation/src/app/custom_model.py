# Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations

from typing import Dict, List

from accelbyte_py_sdk.core import Model


class GoogleCustomSearchResult(Model):
    title: str
    link: str

    def to_dict(self, include_empty: bool = False) -> dict:
        return self.create_dict_from_obj(self, self.get_field_info())

    @classmethod
    def create_from_dict(cls, dikt: dict) -> GoogleCustomSearchResult:
        instance = cls()
        cls.init_obj_from_dict(instance, dikt, cls.get_field_info())
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "title": "title",
            "link": "link",
        }


class GoogleCustomSearchResponse(Model):
    items: List[GoogleCustomSearchResult]

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        items = [item.to_dict() for item in self.items]
        if items:
            result["items"] = items
        return result

    @classmethod
    def create_from_dict(cls, dikt: dict) -> GoogleCustomSearchResponse:
        instance = cls()
        if not dikt:
            return instance
        if items := dikt.get("items"):
            instance.items = [
                GoogleCustomSearchResult.create_from_dict(i) for i in items
            ]
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "items": "items",
        }
