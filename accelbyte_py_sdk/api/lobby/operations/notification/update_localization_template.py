# Auto-generated at 2021-10-21T08:52:27.844311+08:00
# from: Justice lobby Service (1.33.0)

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

from ...models import ModelUpdateTemplateRequest
from ...models import RestapiErrorResponseBody


class UpdateLocalizationTemplate(Operation):
    """update template draft (updateLocalizationTemplate)

    Required permission : `NAMESPACE:{namespace}:TEMPLATE [UPDATE]` with scope
    `social`  
    Modify draft template


    Properties:
        url: /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}

        method: PUT

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        body: (body) REQUIRED ModelUpdateTemplateRequest in body

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

        template_language: (templateLanguage) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
    """

    # region fields

    _url: str = "/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}"
    _method: str = "PUT"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    body: ModelUpdateTemplateRequest                                                               # REQUIRED in [body]
    namespace: str                                                                                 # REQUIRED in [path]
    template_slug: str                                                                             # REQUIRED in [path]
    template_language: str                                                                         # REQUIRED in [path]

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
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", v)
        result += url

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
            "namespace",
            "template_slug",
            "template_language",
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
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "template_slug"):
            result["templateSlug"] = self.template_slug
        if hasattr(self, "template_language"):
            result["templateLanguage"] = self.template_language
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "template_slug") or self.template_slug is None:
            return False
        if not hasattr(self, "template_language") or self.template_language is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: ModelUpdateTemplateRequest) -> UpdateLocalizationTemplate:
        self.body = value
        return self

    def with_namespace(self, value: str) -> UpdateLocalizationTemplate:
        self.namespace = value
        return self

    def with_template_slug(self, value: str) -> UpdateLocalizationTemplate:
        self.template_slug = value
        return self

    def with_template_language(self, value: str) -> UpdateLocalizationTemplate:
        self.template_language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = self.body.to_dict(include_empty=include_empty)
        elif include_empty:
            result["body"] = ModelUpdateTemplateRequest()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "template_slug") and self.template_slug:
            result["templateSlug"] = str(self.template_slug)
        elif include_empty:
            result["templateSlug"] = str()
        if hasattr(self, "template_language") and self.template_language:
            result["templateLanguage"] = str(self.template_language)
        elif include_empty:
            result["templateLanguage"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, RestapiErrorResponseBody]]:
        """Parse the given response.

        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)
        """
        if code == 204:
            return HttpResponse.create(code, "No Content"), None
        if code == 400:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 403:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        if code == 404:
            return None, RestapiErrorResponseBody.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: ModelUpdateTemplateRequest,
        namespace: str,
        template_slug: str,
        template_language: str,
    ) -> UpdateLocalizationTemplate:
        instance = cls()
        instance.body = body
        instance.namespace = namespace
        instance.template_slug = template_slug
        instance.template_language = template_language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UpdateLocalizationTemplate:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = ModelUpdateTemplateRequest.create_from_dict(dict_["body"], include_empty=include_empty)
        elif include_empty:
            instance.body = ModelUpdateTemplateRequest()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "templateSlug" in dict_ and dict_["templateSlug"] is not None:
            instance.template_slug = str(dict_["templateSlug"])
        elif include_empty:
            instance.template_slug = str()
        if "templateLanguage" in dict_ and dict_["templateLanguage"] is not None:
            instance.template_language = str(dict_["templateLanguage"])
        elif include_empty:
            instance.template_language = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "namespace": "namespace",
            "templateSlug": "template_slug",
            "templateLanguage": "template_language",
        }

    # endregion static methods
