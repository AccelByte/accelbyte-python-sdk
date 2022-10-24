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

# AccelByte Cloud Basic Service (2.2.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import UserZipCode
from ...models import UserZipCodeUpdate
from ...models import ValidationErrorEntity


class UpdateMyZipCode(Operation):
    """Update my zip code (updateMyZipCode)

    Update my zip code.
    Other detail info:

      * Required permission : resource= "NAMESPACE:{namespace}:PROFILE" , action=4 (UPDATE)
      *  Action code : 11408
      *  Returns : user zip code

    Required Permission(s):
        - NAMESPACE:{namespace}:PROFILE [UPDATE]

    Properties:
        url: /basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode

        method: PATCH

        tags: ["UserProfile"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        user_zip_code_update: (userZipCodeUpdate) REQUIRED UserZipCodeUpdate in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - UserZipCode (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)
    """

    # region fields

    _url: str = "/basic/v1/public/namespaces/{namespace}/users/me/profiles/zipCode"
    _method: str = "PATCH"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    user_zip_code_update: UserZipCodeUpdate  # REQUIRED in [body]
    namespace: str  # REQUIRED in [path]

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
        if (
            not hasattr(self, "user_zip_code_update")
            or self.user_zip_code_update is None
        ):
            return None
        return self.user_zip_code_update.to_dict()

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_user_zip_code_update(self, value: UserZipCodeUpdate) -> UpdateMyZipCode:
        self.user_zip_code_update = value
        return self

    def with_namespace(self, value: str) -> UpdateMyZipCode:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "user_zip_code_update") and self.user_zip_code_update:
            result["userZipCodeUpdate"] = self.user_zip_code_update.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["userZipCodeUpdate"] = UserZipCodeUpdate()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, UserZipCode],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - UserZipCode (Successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

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
            return UserZipCode.create_from_dict(content), None
        if code == 400:
            return None, ValidationErrorEntity.create_from_dict(content)
        if code == 401:
            return None, ErrorEntity.create_from_dict(content)
        if code == 403:
            return None, ErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_zip_code_update: UserZipCodeUpdate,
        namespace: str,
    ) -> UpdateMyZipCode:
        instance = cls()
        instance.user_zip_code_update = user_zip_code_update
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UpdateMyZipCode:
        instance = cls()
        if "userZipCodeUpdate" in dict_ and dict_["userZipCodeUpdate"] is not None:
            instance.user_zip_code_update = UserZipCodeUpdate.create_from_dict(
                dict_["userZipCodeUpdate"], include_empty=include_empty
            )
        elif include_empty:
            instance.user_zip_code_update = UserZipCodeUpdate()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "userZipCodeUpdate": "user_zip_code_update",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "userZipCodeUpdate": True,
            "namespace": True,
        }

    # endregion static methods
