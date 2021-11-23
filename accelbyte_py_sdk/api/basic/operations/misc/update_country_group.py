# justice-basic-service (1.26.0)

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

from ...models import CountryGroupObject
from ...models import ErrorEntity
from ...models import UpdateCountryGroupRequest
from ...models import ValidationErrorEntity


class UpdateCountryGroup(Operation):
    """Update a country group (updateCountryGroup)

    Update a country groups. The countryGroupCode must be exist
    beforehand.<br>Valid update behaviour :<br/>- To update
    <i>countryGroupName</i> only, do not include <i>countries</i> key or just
    specify it with empty array.<br/>- To update <i>countries</i> only, do not
    include <i>countryGroupName</i> key or just specify it with blank
    value.<br/>Other detail info: <ul><li><i>Required permission</i>: resource =
    <b>"ADMIN:NAMESPACE:{namespace}:MISC"</b>, action=4
    <b>(UPDATE)</b></li><li><i>Action code</i>: 11202</li><li><i>Returns</i>:
    updated country group</li></ul>


    Properties:
        url: /basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}

        method: PUT

        tags: ["Misc"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        body: (body) OPTIONAL UpdateCountryGroupRequest in body

        country_group_code: (countryGroupCode) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - CountryGroupObject (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body | 11234: Unable to {action}: A country can't be assigned to more than one country group)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11233: Unable to {action}: Country group with code [{countryGroupCode}] is not found)
    """

    # region fields

    _url: str = "/basic/v1/admin/namespaces/{namespace}/misc/countrygroups/{countryGroupCode}"
    _method: str = "PUT"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: UpdateCountryGroupRequest                                                                # OPTIONAL in [body]
    country_group_code: str                                                                        # REQUIRED in [path]
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
    def security(self) -> Optional[str]:
        return self._security

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
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "country_group_code",
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
        if hasattr(self, "country_group_code"):
            result["countryGroupCode"] = self.country_group_code
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "country_group_code") or self.country_group_code is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: UpdateCountryGroupRequest) -> UpdateCountryGroup:
        self.body = value
        return self

    def with_country_group_code(self, value: str) -> UpdateCountryGroup:
        self.country_group_code = value
        return self

    def with_namespace(self, value: str) -> UpdateCountryGroup:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = UpdateCountryGroupRequest()
        if hasattr(self, "country_group_code") and self.country_group_code:
            result["countryGroupCode"] = str(self.country_group_code)
        elif include_empty:
            result["countryGroupCode"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, CountryGroupObject], Union[None, ErrorEntity, ValidationErrorEntity]]:
        """Parse the given response.

        200: OK - CountryGroupObject (successful operation)

        400: Bad Request - ValidationErrorEntity (20002: validation error | 20019: unable to parse request body | 11234: Unable to {action}: A country can't be assigned to more than one country group)

        401: Unauthorized - ErrorEntity (20001: unauthorized)

        403: Forbidden - ErrorEntity (20013: insufficient permission)

        404: Not Found - ErrorEntity (11233: Unable to {action}: Country group with code [{countryGroupCode}] is not found)
        """
        if code == 200:
            return CountryGroupObject.create_from_dict(content), None
        if code == 400:
            return None, ValidationErrorEntity.create_from_dict(content)
        if code == 401:
            return None, ErrorEntity.create_from_dict(content)
        if code == 403:
            return None, ErrorEntity.create_from_dict(content)
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        country_group_code: str,
        namespace: str,
        body: Optional[UpdateCountryGroupRequest] = None,
    ) -> UpdateCountryGroup:
        instance = cls()
        instance.country_group_code = country_group_code
        instance.namespace = namespace
        if body is not None:
            instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateCountryGroup:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = UpdateCountryGroupRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = UpdateCountryGroupRequest()
        if "countryGroupCode" in dict_ and dict_["countryGroupCode"] is not None:
            instance.country_group_code = str(dict_["countryGroupCode"])
        elif include_empty:
            instance.country_group_code = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "countryGroupCode": "country_group_code",
            "namespace": "namespace",
        }

    # endregion static methods
