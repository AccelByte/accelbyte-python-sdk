# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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
from ....core import StrEnum

from ..models.import_store_error import ImportStoreError


class ImportFileFormatEnum(StrEnum):
    CSV = "CSV"
    JSON = "JSON"


class ImportStoreHistoryInfo(Model):
    """Import store history info (ImportStoreHistoryInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        import_file_format: (importFileFormat) REQUIRED Union[str, ImportFileFormatEnum]

        initiated_by: (initiatedBy) REQUIRED str

        namespace: (namespace) REQUIRED str

        store_id: (storeId) REQUIRED str

        success: (success) REQUIRED bool

        errors: (errors) OPTIONAL List[ImportStoreError]

        note: (note) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    import_file_format: Union[str, ImportFileFormatEnum]  # REQUIRED
    initiated_by: str  # REQUIRED
    namespace: str  # REQUIRED
    store_id: str  # REQUIRED
    success: bool  # REQUIRED
    errors: List[ImportStoreError]  # OPTIONAL
    note: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ImportStoreHistoryInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> ImportStoreHistoryInfo:
        self.id_ = value
        return self

    def with_import_file_format(
        self, value: Union[str, ImportFileFormatEnum]
    ) -> ImportStoreHistoryInfo:
        self.import_file_format = value
        return self

    def with_initiated_by(self, value: str) -> ImportStoreHistoryInfo:
        self.initiated_by = value
        return self

    def with_namespace(self, value: str) -> ImportStoreHistoryInfo:
        self.namespace = value
        return self

    def with_store_id(self, value: str) -> ImportStoreHistoryInfo:
        self.store_id = value
        return self

    def with_success(self, value: bool) -> ImportStoreHistoryInfo:
        self.success = value
        return self

    def with_errors(self, value: List[ImportStoreError]) -> ImportStoreHistoryInfo:
        self.errors = value
        return self

    def with_note(self, value: str) -> ImportStoreHistoryInfo:
        self.note = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "import_file_format"):
            result["importFileFormat"] = str(self.import_file_format)
        elif include_empty:
            result["importFileFormat"] = Union[str, ImportFileFormatEnum]()
        if hasattr(self, "initiated_by"):
            result["initiatedBy"] = str(self.initiated_by)
        elif include_empty:
            result["initiatedBy"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = False
        if hasattr(self, "errors"):
            result["errors"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.errors
            ]
        elif include_empty:
            result["errors"] = []
        if hasattr(self, "note"):
            result["note"] = str(self.note)
        elif include_empty:
            result["note"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        id_: str,
        import_file_format: Union[str, ImportFileFormatEnum],
        initiated_by: str,
        namespace: str,
        store_id: str,
        success: bool,
        errors: Optional[List[ImportStoreError]] = None,
        note: Optional[str] = None,
        **kwargs,
    ) -> ImportStoreHistoryInfo:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.import_file_format = import_file_format
        instance.initiated_by = initiated_by
        instance.namespace = namespace
        instance.store_id = store_id
        instance.success = success
        if errors is not None:
            instance.errors = errors
        if note is not None:
            instance.note = note
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ImportStoreHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "importFileFormat" in dict_ and dict_["importFileFormat"] is not None:
            instance.import_file_format = str(dict_["importFileFormat"])
        elif include_empty:
            instance.import_file_format = Union[str, ImportFileFormatEnum]()
        if "initiatedBy" in dict_ and dict_["initiatedBy"] is not None:
            instance.initiated_by = str(dict_["initiatedBy"])
        elif include_empty:
            instance.initiated_by = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = False
        if "errors" in dict_ and dict_["errors"] is not None:
            instance.errors = [
                ImportStoreError.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["errors"]
            ]
        elif include_empty:
            instance.errors = []
        if "note" in dict_ and dict_["note"] is not None:
            instance.note = str(dict_["note"])
        elif include_empty:
            instance.note = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ImportStoreHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ImportStoreHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ImportStoreHistoryInfo,
        List[ImportStoreHistoryInfo],
        Dict[Any, ImportStoreHistoryInfo],
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
            "createdAt": "created_at",
            "id": "id_",
            "importFileFormat": "import_file_format",
            "initiatedBy": "initiated_by",
            "namespace": "namespace",
            "storeId": "store_id",
            "success": "success",
            "errors": "errors",
            "note": "note",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "id": True,
            "importFileFormat": True,
            "initiatedBy": True,
            "namespace": True,
            "storeId": True,
            "success": True,
            "errors": False,
            "note": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "importFileFormat": ["CSV", "JSON"],
        }

    # endregion static methods
