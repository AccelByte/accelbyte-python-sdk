# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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

from ..models.models_dictionary_child import ModelsDictionaryChild


class ModelsDictionaryWithChildren(Model):
    """Models dictionary with children (models.DictionaryWithChildren)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        word: (word) REQUIRED str

        word_type: (wordType) REQUIRED str

        false_negatives: (falseNegatives) OPTIONAL List[ModelsDictionaryChild]

        false_positives: (falsePositives) OPTIONAL List[ModelsDictionaryChild]

        parent_id: (parentId) OPTIONAL str
    """

    # region fields

    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    word: str  # REQUIRED
    word_type: str  # REQUIRED
    false_negatives: List[ModelsDictionaryChild]  # OPTIONAL
    false_positives: List[ModelsDictionaryChild]  # OPTIONAL
    parent_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ModelsDictionaryWithChildren:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ModelsDictionaryWithChildren:
        self.namespace = value
        return self

    def with_word(self, value: str) -> ModelsDictionaryWithChildren:
        self.word = value
        return self

    def with_word_type(self, value: str) -> ModelsDictionaryWithChildren:
        self.word_type = value
        return self

    def with_false_negatives(
        self, value: List[ModelsDictionaryChild]
    ) -> ModelsDictionaryWithChildren:
        self.false_negatives = value
        return self

    def with_false_positives(
        self, value: List[ModelsDictionaryChild]
    ) -> ModelsDictionaryWithChildren:
        self.false_positives = value
        return self

    def with_parent_id(self, value: str) -> ModelsDictionaryWithChildren:
        self.parent_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "word"):
            result["word"] = str(self.word)
        elif include_empty:
            result["word"] = ""
        if hasattr(self, "word_type"):
            result["wordType"] = str(self.word_type)
        elif include_empty:
            result["wordType"] = ""
        if hasattr(self, "false_negatives"):
            result["falseNegatives"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.false_negatives
            ]
        elif include_empty:
            result["falseNegatives"] = []
        if hasattr(self, "false_positives"):
            result["falsePositives"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.false_positives
            ]
        elif include_empty:
            result["falsePositives"] = []
        if hasattr(self, "parent_id"):
            result["parentId"] = str(self.parent_id)
        elif include_empty:
            result["parentId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        word: str,
        word_type: str,
        false_negatives: Optional[List[ModelsDictionaryChild]] = None,
        false_positives: Optional[List[ModelsDictionaryChild]] = None,
        parent_id: Optional[str] = None,
        **kwargs,
    ) -> ModelsDictionaryWithChildren:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.word = word
        instance.word_type = word_type
        if false_negatives is not None:
            instance.false_negatives = false_negatives
        if false_positives is not None:
            instance.false_positives = false_positives
        if parent_id is not None:
            instance.parent_id = parent_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDictionaryWithChildren:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "word" in dict_ and dict_["word"] is not None:
            instance.word = str(dict_["word"])
        elif include_empty:
            instance.word = ""
        if "wordType" in dict_ and dict_["wordType"] is not None:
            instance.word_type = str(dict_["wordType"])
        elif include_empty:
            instance.word_type = ""
        if "falseNegatives" in dict_ and dict_["falseNegatives"] is not None:
            instance.false_negatives = [
                ModelsDictionaryChild.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["falseNegatives"]
            ]
        elif include_empty:
            instance.false_negatives = []
        if "falsePositives" in dict_ and dict_["falsePositives"] is not None:
            instance.false_positives = [
                ModelsDictionaryChild.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["falsePositives"]
            ]
        elif include_empty:
            instance.false_positives = []
        if "parentId" in dict_ and dict_["parentId"] is not None:
            instance.parent_id = str(dict_["parentId"])
        elif include_empty:
            instance.parent_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDictionaryWithChildren]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDictionaryWithChildren]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDictionaryWithChildren,
        List[ModelsDictionaryWithChildren],
        Dict[Any, ModelsDictionaryWithChildren],
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
            "id": "id_",
            "namespace": "namespace",
            "word": "word",
            "wordType": "word_type",
            "falseNegatives": "false_negatives",
            "falsePositives": "false_positives",
            "parentId": "parent_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "namespace": True,
            "word": True,
            "wordType": True,
            "falseNegatives": False,
            "falsePositives": False,
            "parentId": False,
        }

    # endregion static methods
