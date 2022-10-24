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

from ...models import Attribute
from ...models import ErrorEntity
from ...models import GameProfileInfo


class PublicUpdateAttribute(Operation):
    """Updates game profile attribute (publicUpdateAttribute)

    Updates game profile attribute, returns updated profile.
    Other detail info:

      *  Required permission : resource="NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE", action=4 (UPDATE)
      *  Returns : updated attribute

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:GAMEPROFILE [UPDATE]

    Properties:
        url: /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}

        method: PUT

        tags: ["GameProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        body: (body) OPTIONAL Attribute in body

        attribute_name: (attributeName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        profile_id: (profileId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - GameProfileInfo (successful operation)

        400: Bad Request - ErrorEntity (12022: Game profile attribute name [{attrName1}] passed in request url mismatch the name [{attrName2}] in body)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)
    """

    # region fields

    _url: str = "/social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: Attribute  # OPTIONAL in [body]
    attribute_name: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    profile_id: str  # REQUIRED in [path]
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
        if hasattr(self, "attribute_name"):
            result["attributeName"] = self.attribute_name
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "profile_id"):
            result["profileId"] = self.profile_id
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: Attribute) -> PublicUpdateAttribute:
        self.body = value
        return self

    def with_attribute_name(self, value: str) -> PublicUpdateAttribute:
        self.attribute_name = value
        return self

    def with_namespace(self, value: str) -> PublicUpdateAttribute:
        self.namespace = value
        return self

    def with_profile_id(self, value: str) -> PublicUpdateAttribute:
        self.profile_id = value
        return self

    def with_user_id(self, value: str) -> PublicUpdateAttribute:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = Attribute()
        if hasattr(self, "attribute_name") and self.attribute_name:
            result["attributeName"] = str(self.attribute_name)
        elif include_empty:
            result["attributeName"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "profile_id") and self.profile_id:
            result["profileId"] = str(self.profile_id)
        elif include_empty:
            result["profileId"] = ""
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
    ) -> Tuple[Union[None, GameProfileInfo], Union[None, ErrorEntity, HttpResponse]]:
        """Parse the given response.

        200: OK - GameProfileInfo (successful operation)

        400: Bad Request - ErrorEntity (12022: Game profile attribute name [{attrName1}] passed in request url mismatch the name [{attrName2}] in body)

        404: Not Found - ErrorEntity (12041: Game profile with id [{profileId}] is not found)

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
            return GameProfileInfo.create_from_dict(content), None
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
        attribute_name: str,
        namespace: str,
        profile_id: str,
        user_id: str,
        body: Optional[Attribute] = None,
    ) -> PublicUpdateAttribute:
        instance = cls()
        instance.attribute_name = attribute_name
        instance.namespace = namespace
        instance.profile_id = profile_id
        instance.user_id = user_id
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicUpdateAttribute:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = Attribute.create_from_dict(
                dict_["body"], include_empty=include_empty
            )
        elif include_empty:
            instance.body = Attribute()
        if "attributeName" in dict_ and dict_["attributeName"] is not None:
            instance.attribute_name = str(dict_["attributeName"])
        elif include_empty:
            instance.attribute_name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "profileId" in dict_ and dict_["profileId"] is not None:
            instance.profile_id = str(dict_["profileId"])
        elif include_empty:
            instance.profile_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "attributeName": "attribute_name",
            "namespace": "namespace",
            "profileId": "profile_id",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": False,
            "attributeName": True,
            "namespace": True,
            "profileId": True,
            "userId": True,
        }

    # endregion static methods
