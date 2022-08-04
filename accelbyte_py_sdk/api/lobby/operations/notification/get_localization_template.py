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

# AccelByte Cloud Lobby Server (staging)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ModelTemplateLocalization
from ...models import RestapiErrorResponseBody


class GetLocalizationTemplate(Operation):
    """get a template localization (getLocalizationTemplate)

    Required permission : `NAMESPACE:{namespace}:TEMPLATE [READ]` with scope `social`

    Get a template localization

    Required Permission(s):
        - NAMESPACE:{namespace}:TEMPLATE [READ]

    Required Scope(s):
        - social

    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

    Responses:
        200: OK - ModelTemplateLocalization (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """

    # region fields

    _url: str = "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    template_language: str  # REQUIRED in [path]
    template_slug: str  # REQUIRED in [path]

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
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "template_language"):
            result["templateLanguage"] = self.template_language
        if hasattr(self, "template_slug"):
            result["templateSlug"] = self.template_slug
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetLocalizationTemplate:
        self.namespace = value
        return self

    def with_template_language(self, value: str) -> GetLocalizationTemplate:
        self.template_language = value
        return self

    def with_template_slug(self, value: str) -> GetLocalizationTemplate:
        self.template_slug = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "template_language") and self.template_language:
            result["templateLanguage"] = str(self.template_language)
        elif include_empty:
            result["templateLanguage"] = ""
        if hasattr(self, "template_slug") and self.template_slug:
            result["templateSlug"] = str(self.template_slug)
        elif include_empty:
            result["templateSlug"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ModelTemplateLocalization],
        Union[None, HttpResponse, RestapiErrorResponseBody],
    ]:
        """Parse the given response.

        200: OK - ModelTemplateLocalization (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

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
            return ModelTemplateLocalization.create_from_dict(content), None
        if code == 400:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 403:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 404:
            return None, RestapiErrorResponseBody.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        template_language: str,
        template_slug: str,
    ) -> GetLocalizationTemplate:
        instance = cls()
        instance.namespace = namespace
        instance.template_language = template_language
        instance.template_slug = template_slug
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetLocalizationTemplate:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "templateLanguage" in dict_ and dict_["templateLanguage"] is not None:
            instance.template_language = str(dict_["templateLanguage"])
        elif include_empty:
            instance.template_language = ""
        if "templateSlug" in dict_ and dict_["templateSlug"] is not None:
            instance.template_slug = str(dict_["templateSlug"])
        elif include_empty:
            instance.template_slug = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "templateLanguage": "template_language",
            "templateSlug": "template_slug",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "templateLanguage": True,
            "templateSlug": True,
        }

    # endregion static methods
