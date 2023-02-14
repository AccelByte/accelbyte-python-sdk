# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Social Service (1.33.0)

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


class SlotInfo(Model):
    """Slot info (SlotInfo)

    Properties:
        checksum: (checksum) OPTIONAL str

        custom_attribute: (customAttribute) OPTIONAL str

        date_accessed: (dateAccessed) OPTIONAL str

        date_created: (dateCreated) OPTIONAL str

        date_modified: (dateModified) OPTIONAL str

        label: (label) OPTIONAL str

        mime_type: (mimeType) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        original_name: (originalName) OPTIONAL str

        size: (size) OPTIONAL int

        slot_id: (slotId) OPTIONAL str

        stored_name: (storedName) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        user_id: (userId) OPTIONAL str
    """

    # region fields

    checksum: str  # OPTIONAL
    custom_attribute: str  # OPTIONAL
    date_accessed: str  # OPTIONAL
    date_created: str  # OPTIONAL
    date_modified: str  # OPTIONAL
    label: str  # OPTIONAL
    mime_type: str  # OPTIONAL
    namespace: str  # OPTIONAL
    original_name: str  # OPTIONAL
    size: int  # OPTIONAL
    slot_id: str  # OPTIONAL
    stored_name: str  # OPTIONAL
    tags: List[str]  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_checksum(self, value: str) -> SlotInfo:
        self.checksum = value
        return self

    def with_custom_attribute(self, value: str) -> SlotInfo:
        self.custom_attribute = value
        return self

    def with_date_accessed(self, value: str) -> SlotInfo:
        self.date_accessed = value
        return self

    def with_date_created(self, value: str) -> SlotInfo:
        self.date_created = value
        return self

    def with_date_modified(self, value: str) -> SlotInfo:
        self.date_modified = value
        return self

    def with_label(self, value: str) -> SlotInfo:
        self.label = value
        return self

    def with_mime_type(self, value: str) -> SlotInfo:
        self.mime_type = value
        return self

    def with_namespace(self, value: str) -> SlotInfo:
        self.namespace = value
        return self

    def with_original_name(self, value: str) -> SlotInfo:
        self.original_name = value
        return self

    def with_size(self, value: int) -> SlotInfo:
        self.size = value
        return self

    def with_slot_id(self, value: str) -> SlotInfo:
        self.slot_id = value
        return self

    def with_stored_name(self, value: str) -> SlotInfo:
        self.stored_name = value
        return self

    def with_tags(self, value: List[str]) -> SlotInfo:
        self.tags = value
        return self

    def with_user_id(self, value: str) -> SlotInfo:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "checksum"):
            result["checksum"] = str(self.checksum)
        elif include_empty:
            result["checksum"] = ""
        if hasattr(self, "custom_attribute"):
            result["customAttribute"] = str(self.custom_attribute)
        elif include_empty:
            result["customAttribute"] = ""
        if hasattr(self, "date_accessed"):
            result["dateAccessed"] = str(self.date_accessed)
        elif include_empty:
            result["dateAccessed"] = ""
        if hasattr(self, "date_created"):
            result["dateCreated"] = str(self.date_created)
        elif include_empty:
            result["dateCreated"] = ""
        if hasattr(self, "date_modified"):
            result["dateModified"] = str(self.date_modified)
        elif include_empty:
            result["dateModified"] = ""
        if hasattr(self, "label"):
            result["label"] = str(self.label)
        elif include_empty:
            result["label"] = ""
        if hasattr(self, "mime_type"):
            result["mimeType"] = str(self.mime_type)
        elif include_empty:
            result["mimeType"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "original_name"):
            result["originalName"] = str(self.original_name)
        elif include_empty:
            result["originalName"] = ""
        if hasattr(self, "size"):
            result["size"] = int(self.size)
        elif include_empty:
            result["size"] = 0
        if hasattr(self, "slot_id"):
            result["slotId"] = str(self.slot_id)
        elif include_empty:
            result["slotId"] = ""
        if hasattr(self, "stored_name"):
            result["storedName"] = str(self.stored_name)
        elif include_empty:
            result["storedName"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
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
        checksum: Optional[str] = None,
        custom_attribute: Optional[str] = None,
        date_accessed: Optional[str] = None,
        date_created: Optional[str] = None,
        date_modified: Optional[str] = None,
        label: Optional[str] = None,
        mime_type: Optional[str] = None,
        namespace: Optional[str] = None,
        original_name: Optional[str] = None,
        size: Optional[int] = None,
        slot_id: Optional[str] = None,
        stored_name: Optional[str] = None,
        tags: Optional[List[str]] = None,
        user_id: Optional[str] = None,
    ) -> SlotInfo:
        instance = cls()
        if checksum is not None:
            instance.checksum = checksum
        if custom_attribute is not None:
            instance.custom_attribute = custom_attribute
        if date_accessed is not None:
            instance.date_accessed = date_accessed
        if date_created is not None:
            instance.date_created = date_created
        if date_modified is not None:
            instance.date_modified = date_modified
        if label is not None:
            instance.label = label
        if mime_type is not None:
            instance.mime_type = mime_type
        if namespace is not None:
            instance.namespace = namespace
        if original_name is not None:
            instance.original_name = original_name
        if size is not None:
            instance.size = size
        if slot_id is not None:
            instance.slot_id = slot_id
        if stored_name is not None:
            instance.stored_name = stored_name
        if tags is not None:
            instance.tags = tags
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SlotInfo:
        instance = cls()
        if not dict_:
            return instance
        if "checksum" in dict_ and dict_["checksum"] is not None:
            instance.checksum = str(dict_["checksum"])
        elif include_empty:
            instance.checksum = ""
        if "customAttribute" in dict_ and dict_["customAttribute"] is not None:
            instance.custom_attribute = str(dict_["customAttribute"])
        elif include_empty:
            instance.custom_attribute = ""
        if "dateAccessed" in dict_ and dict_["dateAccessed"] is not None:
            instance.date_accessed = str(dict_["dateAccessed"])
        elif include_empty:
            instance.date_accessed = ""
        if "dateCreated" in dict_ and dict_["dateCreated"] is not None:
            instance.date_created = str(dict_["dateCreated"])
        elif include_empty:
            instance.date_created = ""
        if "dateModified" in dict_ and dict_["dateModified"] is not None:
            instance.date_modified = str(dict_["dateModified"])
        elif include_empty:
            instance.date_modified = ""
        if "label" in dict_ and dict_["label"] is not None:
            instance.label = str(dict_["label"])
        elif include_empty:
            instance.label = ""
        if "mimeType" in dict_ and dict_["mimeType"] is not None:
            instance.mime_type = str(dict_["mimeType"])
        elif include_empty:
            instance.mime_type = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "originalName" in dict_ and dict_["originalName"] is not None:
            instance.original_name = str(dict_["originalName"])
        elif include_empty:
            instance.original_name = ""
        if "size" in dict_ and dict_["size"] is not None:
            instance.size = int(dict_["size"])
        elif include_empty:
            instance.size = 0
        if "slotId" in dict_ and dict_["slotId"] is not None:
            instance.slot_id = str(dict_["slotId"])
        elif include_empty:
            instance.slot_id = ""
        if "storedName" in dict_ and dict_["storedName"] is not None:
            instance.stored_name = str(dict_["storedName"])
        elif include_empty:
            instance.stored_name = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SlotInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SlotInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[SlotInfo, List[SlotInfo], Dict[Any, SlotInfo]]:
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
            "checksum": "checksum",
            "customAttribute": "custom_attribute",
            "dateAccessed": "date_accessed",
            "dateCreated": "date_created",
            "dateModified": "date_modified",
            "label": "label",
            "mimeType": "mime_type",
            "namespace": "namespace",
            "originalName": "original_name",
            "size": "size",
            "slotId": "slot_id",
            "storedName": "stored_name",
            "tags": "tags",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "checksum": False,
            "customAttribute": False,
            "dateAccessed": False,
            "dateCreated": False,
            "dateModified": False,
            "label": False,
            "mimeType": False,
            "namespace": False,
            "originalName": False,
            "size": False,
            "slotId": False,
            "storedName": False,
            "tags": False,
            "userId": False,
        }

    # endregion static methods
