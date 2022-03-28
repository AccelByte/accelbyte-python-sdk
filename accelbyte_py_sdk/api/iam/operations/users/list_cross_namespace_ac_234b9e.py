# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-iam-service (5.5.1)

from __future__ import annotations
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse
from .....core import deprecated


@deprecated
class ListCrossNamespaceAccountLink(Operation):
    """Links existing account with another account in different namespace.  (ListCrossNamespaceAccountLink)

    ## The endpoint is going to be deprecated at 9 July, 2018. Please use this instead: /users/{userId}/platforms/{platformId}/link




    Required permission 'NAMESPACE:{namespace}:USER:{userId} [UPDATE]'.





    Access token from original namespace is needed as authorization header. Access token from designated account needed as form parameter to verify the ownership of that account.
    When platformID (device platfom ID) is specified, platform login method for that specific platform ID is removed.
    This means to protect account from second hand device usage.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId} [UPDATE]

    Properties:
        url: /iam/namespaces/{namespace}/users/{userId}/crosslink

        method: POST

        tags: ["Users"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        security_type: bearer

        platform_id: (platformId) OPTIONAL str in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (Operation succeeded)

        400: Bad Request - (Invalid request)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)

        404: Not Found - (Data not found)
    """

    # region fields

    _url: str = "/iam/namespaces/{namespace}/users/{userId}/crosslink"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    platform_id: str                                                                               # OPTIONAL in [form_data]
    linking_token: str                                                                             # REQUIRED in [form_data]
    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]

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

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "linking_token",
            "namespace",
            "user_id",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "form_data": self.get_form_data_params(),
            "path": self.get_path_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "platform_id"):
            result["platformId"] = self.platform_id
        if hasattr(self, "linking_token"):
            result["linkingToken"] = self.linking_token
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        # required checks
        if not hasattr(self, "linking_token") or self.linking_token is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region with_x methods

    def with_platform_id(self, value: str) -> ListCrossNamespaceAccountLink:
        self.platform_id = value
        return self

    def with_linking_token(self, value: str) -> ListCrossNamespaceAccountLink:
        self.linking_token = value
        return self

    def with_namespace(self, value: str) -> ListCrossNamespaceAccountLink:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> ListCrossNamespaceAccountLink:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_id") and self.platform_id:
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = str()
        if hasattr(self, "linking_token") and self.linking_token:
            result["linkingToken"] = str(self.linking_token)
        elif include_empty:
            result["linkingToken"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - (Operation succeeded)

        400: Bad Request - (Invalid request)

        401: Unauthorized - (Unauthorized access)

        403: Forbidden - (Forbidden)

        404: Not Found - (Data not found)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(code=code, content_type=content_type, content=content)
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return HttpResponse.create(code, "OK"), None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")
        if code == 403:
            return None, HttpResponse.create(code, "Forbidden")
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")

        return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        linking_token: str,
        namespace: str,
        user_id: str,
        platform_id: Optional[str] = None,
    ) -> ListCrossNamespaceAccountLink:
        instance = cls()
        instance.linking_token = linking_token
        instance.namespace = namespace
        instance.user_id = user_id
        if platform_id is not None:
            instance.platform_id = platform_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ListCrossNamespaceAccountLink:
        instance = cls()
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = str()
        if "linkingToken" in dict_ and dict_["linkingToken"] is not None:
            instance.linking_token = str(dict_["linkingToken"])
        elif include_empty:
            instance.linking_token = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "platformId": "platform_id",
            "linkingToken": "linking_token",
            "namespace": "namespace",
            "userId": "user_id",
        }

    # endregion static methods
