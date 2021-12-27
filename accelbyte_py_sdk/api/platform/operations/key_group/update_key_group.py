# justice-platform-service (3.39.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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

from .....core import Operation
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import KeyGroupInfo
from ...models import KeyGroupUpdate
from ...models import ValidationErrorEntity


class UpdateKeyGroup(Operation):
    """Update key group (updateKeyGroup)

    Update key group.<br>Other detail info: <ul><li><i>Required permission</i>:
    resource="ADMIN:NAMESPACE:{namespace}:KEYGROUP", action=4
    (UPDATE)</li><li><i>Returns</i>: updated key group</li></ul>


    Properties:
        url: /platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}

        method: PUT

        tags: ["KeyGroup"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) OPTIONAL KeyGroupUpdate in body

        key_group_id: (keyGroupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - KeyGroupInfo (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37271: Key group [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/keygroups/{keyGroupId}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: KeyGroupUpdate                                                                           # OPTIONAL in [body]
    key_group_id: str                                                                              # REQUIRED in [path]
    namespace: str                                                                                 # REQUIRED in [path]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "key_group_id",
            "namespace",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
            "path": self.get_path_params(),
        }

    def get_body_params(self) -> Any:
        return self.body.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "key_group_id"):
            result["keyGroupId"] = self.key_group_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "key_group_id") or self.key_group_id is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: KeyGroupUpdate) -> UpdateKeyGroup:
        self.body = value
        return self

    def with_key_group_id(self, value: str) -> UpdateKeyGroup:
        self.key_group_id = value
        return self

    def with_namespace(self, value: str) -> UpdateKeyGroup:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = KeyGroupUpdate()
        if hasattr(self, "key_group_id") and self.key_group_id:
            result["keyGroupId"] = str(self.key_group_id)
        elif include_empty:
            result["keyGroupId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, KeyGroupInfo], Union[None, ErrorEntity, ValidationErrorEntity]]:
        """Parse the given response.

        200: OK - KeyGroupInfo (successful operation)

        404: Not Found - ErrorEntity (37241: Key group [{keyGroupId}] does not exist in namespace [{namespace}])

        409: Conflict - ErrorEntity (37271: Key group [{name}] already exists in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
        """
        if code == 200:
            return KeyGroupInfo.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 409:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        key_group_id: str,
        namespace: str,
        body: Optional[KeyGroupUpdate] = None,
    ) -> UpdateKeyGroup:
        instance = cls()
        instance.key_group_id = key_group_id
        instance.namespace = namespace
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateKeyGroup:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = KeyGroupUpdate.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = KeyGroupUpdate()
        if "keyGroupId" in dict_ and dict_["keyGroupId"] is not None:
            instance.key_group_id = str(dict_["keyGroupId"])
        elif include_empty:
            instance.key_group_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "keyGroupId": "key_group_id",
            "namespace": "namespace",
        }

    # endregion static methods
