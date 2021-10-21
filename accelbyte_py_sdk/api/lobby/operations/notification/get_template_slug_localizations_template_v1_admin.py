# Auto-generated at 2021-10-21T08:52:27.696135+08:00
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

from ...models import ModelGetAllNotificationTemplateSlugResp
from ...models import RestapiErrorResponseV1


class GetTemplateSlugLocalizationsTemplateV1Admin(Operation):
    """get all notification template localization in a slug (getTemplateSlugLocalizationsTemplateV1Admin)

    Required permission : `ADMIN:NAMESPACE:{namespace}:NOTIFICATION [READ]` with
    scope `social`  
    Get all templates in a namespace  
    Action Code: 50205


    Properties:
        url: /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}

        method: GET

        tags: ["notification"]

        consumes: ["application/json"]

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        template_slug: (templateSlug) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        before: (before) OPTIONAL str in query

        after: (after) OPTIONAL str in query

    Responses:
        200: OK - ModelGetAllNotificationTemplateSlugResp (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
    """

    # region fields

    _url: str = "/lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    template_slug: str                                                                             # REQUIRED in [path]
    limit: int                                                                                     # OPTIONAL in [query]
    before: str                                                                                    # OPTIONAL in [query]
    after: str                                                                                     # OPTIONAL in [query]

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

        # query params
        result += "?" + "&".join([f"{k}={v}" for k, v in self.get_query_params().items()])

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
            "template_slug",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "template_slug"):
            result["templateSlug"] = self.template_slug
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "before"):
            result["before"] = self.before
        if hasattr(self, "after"):
            result["after"] = self.after
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "template_slug") or self.template_slug is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetTemplateSlugLocalizationsTemplateV1Admin:
        self.namespace = value
        return self

    def with_template_slug(self, value: str) -> GetTemplateSlugLocalizationsTemplateV1Admin:
        self.template_slug = value
        return self

    def with_limit(self, value: int) -> GetTemplateSlugLocalizationsTemplateV1Admin:
        self.limit = value
        return self

    def with_before(self, value: str) -> GetTemplateSlugLocalizationsTemplateV1Admin:
        self.before = value
        return self

    def with_after(self, value: str) -> GetTemplateSlugLocalizationsTemplateV1Admin:
        self.after = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "template_slug") and self.template_slug:
            result["templateSlug"] = str(self.template_slug)
        elif include_empty:
            result["templateSlug"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        if hasattr(self, "before") and self.before:
            result["before"] = str(self.before)
        elif include_empty:
            result["before"] = str()
        if hasattr(self, "after") and self.after:
            result["after"] = str(self.after)
        elif include_empty:
            result["after"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelGetAllNotificationTemplateSlugResp], Union[None, RestapiErrorResponseV1]]:
        """Parse the given response.

        200: OK - ModelGetAllNotificationTemplateSlugResp (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)
        """
        if code == 200:
            return ModelGetAllNotificationTemplateSlugResp.create_from_dict(content), None
        if code == 400:
            return None, RestapiErrorResponseV1.create_from_dict(content)
        if code == 401:
            return None, RestapiErrorResponseV1.create_from_dict(content)
        if code == 403:
            return None, RestapiErrorResponseV1.create_from_dict(content)
        if code == 404:
            return None, RestapiErrorResponseV1.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        template_slug: str,
        limit: Optional[int] = None,
        before: Optional[str] = None,
        after: Optional[str] = None,
    ) -> GetTemplateSlugLocalizationsTemplateV1Admin:
        instance = cls()
        instance.namespace = namespace
        instance.template_slug = template_slug
        if limit is not None:
            instance.limit = limit
        if before is not None:
            instance.before = before
        if after is not None:
            instance.after = after
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetTemplateSlugLocalizationsTemplateV1Admin:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "templateSlug" in dict_ and dict_["templateSlug"] is not None:
            instance.template_slug = str(dict_["templateSlug"])
        elif include_empty:
            instance.template_slug = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        if "before" in dict_ and dict_["before"] is not None:
            instance.before = str(dict_["before"])
        elif include_empty:
            instance.before = str()
        if "after" in dict_ and dict_["after"] is not None:
            instance.after = str(dict_["after"])
        elif include_empty:
            instance.after = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "templateSlug": "template_slug",
            "limit": "limit",
            "before": "before",
            "after": "after",
        }

    # endregion static methods
