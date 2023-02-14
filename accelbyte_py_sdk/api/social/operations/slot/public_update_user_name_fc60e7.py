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

# AccelByte Cloud Social Service (1.33.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import SlotInfo
from ...models import SlotMetadataUpdate


class PublicUpdateUserNamespaceSlotMetadata(Operation):
    """Updates the slot metadata (publicUpdateUserNamespaceSlotMetadata)

    Updates the slot metadata.
    Other detail info:

      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:SLOTDATA", action=4 (UPDATE)
      *  Returns : updated slot

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:SLOTDATA [UPDATE]

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata

        method: PUT

        tags: ["Slot"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL SlotMetadataUpdate in body

        namespace: (namespace) REQUIRED str in path

        slot_id: (slotId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - SlotInfo (successful operation)

        404: Not Found - ErrorEntity (12141: Slot [{slotId}] not found in namespace [{namespace}])
    """

    # region fields

    _url: str = (
        "/social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata"
    )
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: SlotMetadataUpdate  # OPTIONAL in [body]
    namespace: str  # REQUIRED in [path]
    slot_id: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]

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
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "slot_id"):
            result["slotId"] = self.slot_id
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: SlotMetadataUpdate
    ) -> PublicUpdateUserNamespaceSlotMetadata:
        self.body = value
        return self

    def with_namespace(self, value: str) -> PublicUpdateUserNamespaceSlotMetadata:
        self.namespace = value
        return self

    def with_slot_id(self, value: str) -> PublicUpdateUserNamespaceSlotMetadata:
        self.slot_id = value
        return self

    def with_user_id(self, value: str) -> PublicUpdateUserNamespaceSlotMetadata:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = SlotMetadataUpdate()
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
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, SlotInfo], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - SlotInfo (successful operation)

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
        body: Optional[SlotMetadataUpdate] = None,
    ) -> PublicUpdateUserNamespaceSlotMetadata:
        instance = cls()
        instance.namespace = namespace
        instance.slot_id = slot_id
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicUpdateUserNamespaceSlotMetadata:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = SlotMetadataUpdate.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = SlotMetadataUpdate()
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
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "slotId": "slot_id",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "namespace": True,
            "slotId": True,
            "userId": True,
        }

    # endregion static methods
