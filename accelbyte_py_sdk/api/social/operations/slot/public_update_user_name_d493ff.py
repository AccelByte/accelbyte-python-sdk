# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

# AccelByte Cloud Social Service (1.30.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import SlotInfo


class PublicUpdateUserNamespaceSlot(Operation):
    """Updates a slot (publicUpdateUserNamespaceSlot)

    Updates a slot.
    Other detail info:

      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=4 (UPDATE)
      *  Returns : updated slot

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:SLOTDATA [UPDATE]

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}

        method: PUT

        tags: ["Slot"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        checksum: (checksum) OPTIONAL str in form_data

        custom_attribute: (customAttribute) OPTIONAL str in form_data

        file: (file) OPTIONAL Any in form_data

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        label: (label) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

    Responses:
        200: OK - SlotInfo (successful operation)

        400: Bad Request - ErrorEntity (12121: Checksum mismatch for [{filename}] | 12122: [{filename}] exceeds the upload limit size of [{sizeLimit}] bytes)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """

    # region fields

    _url: str = "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}"
    _method: str = "PUT"
    _consumes: List[str] = ["multipart/form-data"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    checksum: str  # OPTIONAL in [form_data]
    custom_attribute: str  # OPTIONAL in [form_data]
    file: Any  # OPTIONAL in [form_data]
    namespace: str  # REQUIRED in [path]
    slot_id: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    label: str  # OPTIONAL in [query]
    tags: List[str]  # OPTIONAL in [query]

    # endregion fields

    # region properties

    @property
    def url(self) -> str:
        return self._url

    @property
    def method(self) -> str:
        return self._method

    @property
    def consumes(self) -> List[str]:
        return self._consumes

    @property
    def produces(self) -> List[str]:
        return self._produces

    @property
    def securities(self) -> List[List[str]]:
        return self._securities

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "form_data": self.get_form_data_params(),
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "checksum"):
            result["checksum"] = self.checksum
        if hasattr(self, "custom_attribute"):
            result["customAttribute"] = self.custom_attribute
        if hasattr(self, "file"):
            result["file"] = self.file
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "slot_id"):
            result["slotId"] = self.slot_id
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "label"):
            result["label"] = self.label
        if hasattr(self, "tags"):
            result["tags"] = self.tags
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_checksum(self, value: str) -> PublicUpdateUserNamespaceSlot:
        self.checksum = value
        return self

    def with_custom_attribute(self, value: str) -> PublicUpdateUserNamespaceSlot:
        self.custom_attribute = value
        return self

    def with_file(self, value: Any) -> PublicUpdateUserNamespaceSlot:
        self.file = value
        return self

    def with_namespace(self, value: str) -> PublicUpdateUserNamespaceSlot:
        self.namespace = value
        return self

    def with_slot_id(self, value: str) -> PublicUpdateUserNamespaceSlot:
        self.slot_id = value
        return self

    def with_user_id(self, value: str) -> PublicUpdateUserNamespaceSlot:
        self.user_id = value
        return self

    def with_label(self, value: str) -> PublicUpdateUserNamespaceSlot:
        self.label = value
        return self

    def with_tags(self, value: List[str]) -> PublicUpdateUserNamespaceSlot:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "checksum") and self.checksum:
            result["checksum"] = str(self.checksum)
        elif include_empty:
            result["checksum"] = ""
        if hasattr(self, "custom_attribute") and self.custom_attribute:
            result["customAttribute"] = str(self.custom_attribute)
        elif include_empty:
            result["customAttribute"] = ""
        if hasattr(self, "file") and self.file:
            result["file"] = Any(self.file)
        elif include_empty:
            result["file"] = Any()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "slot_id") and self.slot_id:
            result["slotId"] = str(self.slot_id)
        elif include_empty:
            result["slotId"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "label") and self.label:
            result["label"] = str(self.label)
        elif include_empty:
            result["label"] = ""
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, SlotInfo], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - SlotInfo (successful operation)

        400: Bad Request - ErrorEntity (12121: Checksum mismatch for [{filename}] | 12122: [{filename}] exceeds the upload limit size of [{sizeLimit}] bytes)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(
            code=code, content_type=content_type, content=content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return SlotInfo.create_from_dict(content), None
        if code == 400:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        slot_id: str,
        user_id: str,
        checksum: Optional[str] = None,
        custom_attribute: Optional[str] = None,
        file: Optional[Any] = None,
        label: Optional[str] = None,
        tags: Optional[List[str]] = None,
    ) -> PublicUpdateUserNamespaceSlot:
        instance = cls()
        instance.namespace = namespace
        instance.slot_id = slot_id
        instance.user_id = user_id
        if checksum is not None:
            instance.checksum = checksum
        if custom_attribute is not None:
            instance.custom_attribute = custom_attribute
        if file is not None:
            instance.file = file
        if label is not None:
            instance.label = label
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicUpdateUserNamespaceSlot:
        instance = cls()
        if "checksum" in dict_ and dict_["checksum"] is not None:
            instance.checksum = str(dict_["checksum"])
        elif include_empty:
            instance.checksum = ""
        if "customAttribute" in dict_ and dict_["customAttribute"] is not None:
            instance.custom_attribute = str(dict_["customAttribute"])
        elif include_empty:
            instance.custom_attribute = ""
        if "file" in dict_ and dict_["file"] is not None:
            instance.file = Any(dict_["file"])
        elif include_empty:
            instance.file = Any()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "slotId" in dict_ and dict_["slotId"] is not None:
            instance.slot_id = str(dict_["slotId"])
        elif include_empty:
            instance.slot_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "label" in dict_ and dict_["label"] is not None:
            instance.label = str(dict_["label"])
        elif include_empty:
            instance.label = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "checksum": "checksum",
            "customAttribute": "custom_attribute",
            "file": "file",
            "namespace": "namespace",
            "slotId": "slot_id",
            "userId": "user_id",
            "label": "label",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "checksum": False,
            "customAttribute": False,
            "file": False,
            "namespace": True,
            "slotId": True,
            "userId": True,
            "label": False,
            "tags": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "tags": "multi",  # in query
        }

    # endregion static methods
