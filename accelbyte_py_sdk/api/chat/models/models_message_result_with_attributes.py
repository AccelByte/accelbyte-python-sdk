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


class ModelsMessageResultWithAttributes(Model):
    """Models message result with attributes (models.MessageResultWithAttributes)

    Properties:
        action: (action) REQUIRED str

        final_message: (finalMessage) REQUIRED str

        id_: (id) REQUIRED str

        timestamp: (timestamp) REQUIRED int

        attributes: (attributes) OPTIONAL Dict[str, Any]

        cencored_words: (cencoredWords) OPTIONAL List[str]

        classifications: (classifications) OPTIONAL List[str]

        reference_id: (referenceId) OPTIONAL str
    """

    # region fields

    action: str  # REQUIRED
    final_message: str  # REQUIRED
    id_: str  # REQUIRED
    timestamp: int  # REQUIRED
    attributes: Dict[str, Any]  # OPTIONAL
    cencored_words: List[str]  # OPTIONAL
    classifications: List[str]  # OPTIONAL
    reference_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: str) -> ModelsMessageResultWithAttributes:
        self.action = value
        return self

    def with_final_message(self, value: str) -> ModelsMessageResultWithAttributes:
        self.final_message = value
        return self

    def with_id(self, value: str) -> ModelsMessageResultWithAttributes:
        self.id_ = value
        return self

    def with_timestamp(self, value: int) -> ModelsMessageResultWithAttributes:
        self.timestamp = value
        return self

    def with_attributes(
        self, value: Dict[str, Any]
    ) -> ModelsMessageResultWithAttributes:
        self.attributes = value
        return self

    def with_cencored_words(
        self, value: List[str]
    ) -> ModelsMessageResultWithAttributes:
        self.cencored_words = value
        return self

    def with_classifications(
        self, value: List[str]
    ) -> ModelsMessageResultWithAttributes:
        self.classifications = value
        return self

    def with_reference_id(self, value: str) -> ModelsMessageResultWithAttributes:
        self.reference_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = ""
        if hasattr(self, "final_message"):
            result["finalMessage"] = str(self.final_message)
        elif include_empty:
            result["finalMessage"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "timestamp"):
            result["timestamp"] = int(self.timestamp)
        elif include_empty:
            result["timestamp"] = 0
        if hasattr(self, "attributes"):
            result["attributes"] = {str(k0): v0 for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        if hasattr(self, "cencored_words"):
            result["cencoredWords"] = [str(i0) for i0 in self.cencored_words]
        elif include_empty:
            result["cencoredWords"] = []
        if hasattr(self, "classifications"):
            result["classifications"] = [str(i0) for i0 in self.classifications]
        elif include_empty:
            result["classifications"] = []
        if hasattr(self, "reference_id"):
            result["referenceId"] = str(self.reference_id)
        elif include_empty:
            result["referenceId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: str,
        final_message: str,
        id_: str,
        timestamp: int,
        attributes: Optional[Dict[str, Any]] = None,
        cencored_words: Optional[List[str]] = None,
        classifications: Optional[List[str]] = None,
        reference_id: Optional[str] = None,
        **kwargs,
    ) -> ModelsMessageResultWithAttributes:
        instance = cls()
        instance.action = action
        instance.final_message = final_message
        instance.id_ = id_
        instance.timestamp = timestamp
        if attributes is not None:
            instance.attributes = attributes
        if cencored_words is not None:
            instance.cencored_words = cencored_words
        if classifications is not None:
            instance.classifications = classifications
        if reference_id is not None:
            instance.reference_id = reference_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMessageResultWithAttributes:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = ""
        if "finalMessage" in dict_ and dict_["finalMessage"] is not None:
            instance.final_message = str(dict_["finalMessage"])
        elif include_empty:
            instance.final_message = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = int(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = 0
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): v0 for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "cencoredWords" in dict_ and dict_["cencoredWords"] is not None:
            instance.cencored_words = [str(i0) for i0 in dict_["cencoredWords"]]
        elif include_empty:
            instance.cencored_words = []
        if "classifications" in dict_ and dict_["classifications"] is not None:
            instance.classifications = [str(i0) for i0 in dict_["classifications"]]
        elif include_empty:
            instance.classifications = []
        if "referenceId" in dict_ and dict_["referenceId"] is not None:
            instance.reference_id = str(dict_["referenceId"])
        elif include_empty:
            instance.reference_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMessageResultWithAttributes]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMessageResultWithAttributes]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMessageResultWithAttributes,
        List[ModelsMessageResultWithAttributes],
        Dict[Any, ModelsMessageResultWithAttributes],
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
            "action": "action",
            "finalMessage": "final_message",
            "id": "id_",
            "timestamp": "timestamp",
            "attributes": "attributes",
            "cencoredWords": "cencored_words",
            "classifications": "classifications",
            "referenceId": "reference_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "finalMessage": True,
            "id": True,
            "timestamp": True,
            "attributes": False,
            "cencoredWords": False,
            "classifications": False,
            "referenceId": False,
        }

    # endregion static methods
