# justice-event-log-service (1.18.3)

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

from ...models import ModelsEventResponseV2


class GetPublicEditHistory(Operation):
    """Get a user edit history based on the provided type (GetPublicEditHistory)

    <p>Available Type: </p> <ul> <li>email</li> <li>password</li>
    <li>displayname</li> <li>dateofbirth</li> <li>country</li> <li>language</li>
    </ul> <p>Requires a valid user access token</p>


    Properties:
        url: /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory

        method: GET

        tags: ["Event V2"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        offset: (offset) OPTIONAL float in query

        page_size: (pageSize) OPTIONAL float in query

        start_date: (startDate) OPTIONAL str in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Not Implemented)
    """

    # region fields

    _url: str = "/event/v2/public/namespaces/{namespace}/users/{userId}/edithistory"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    end_date: str                                                                                  # OPTIONAL in [query]
    offset: float                                                                                  # OPTIONAL in [query]
    page_size: float                                                                               # OPTIONAL in [query]
    start_date: str                                                                                # OPTIONAL in [query]
    type_: str                                                                                     # OPTIONAL in [query]

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
            "namespace",
            "user_id",
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
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "end_date"):
            result["endDate"] = self.end_date
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "page_size"):
            result["pageSize"] = self.page_size
        if hasattr(self, "start_date"):
            result["startDate"] = self.start_date
        if hasattr(self, "type_"):
            result["type"] = self.type_
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> GetPublicEditHistory:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> GetPublicEditHistory:
        self.user_id = value
        return self

    def with_end_date(self, value: str) -> GetPublicEditHistory:
        self.end_date = value
        return self

    def with_offset(self, value: float) -> GetPublicEditHistory:
        self.offset = value
        return self

    def with_page_size(self, value: float) -> GetPublicEditHistory:
        self.page_size = value
        return self

    def with_start_date(self, value: str) -> GetPublicEditHistory:
        self.start_date = value
        return self

    def with_type_(self, value: str) -> GetPublicEditHistory:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = float(self.offset)
        elif include_empty:
            result["offset"] = float()
        if hasattr(self, "page_size") and self.page_size:
            result["pageSize"] = float(self.page_size)
        elif include_empty:
            result["pageSize"] = float()
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ModelsEventResponseV2], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Not Implemented)
        """
        if code == 200:
            return ModelsEventResponseV2.create_from_dict(content), None
        if code == 400:
            return None, HttpResponse.create(code, "Bad Request")
        if code == 401:
            return None, HttpResponse.create(code, "Unauthorized")
        if code == 403:
            return None, HttpResponse.create(code, "Forbidden")
        if code == 404:
            return None, HttpResponse.create(code, "Not Found")
        if code == 500:
            return None, HttpResponse.create(code, "Internal Server Error")
        if code == 501:
            return None, HttpResponse.create(code, "Not Implemented")
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
        user_id: str,
        end_date: Optional[str] = None,
        offset: Optional[float] = None,
        page_size: Optional[float] = None,
        start_date: Optional[str] = None,
        type_: Optional[str] = None,
    ) -> GetPublicEditHistory:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if end_date is not None:
            instance.end_date = end_date
        if offset is not None:
            instance.offset = offset
        if page_size is not None:
            instance.page_size = page_size
        if start_date is not None:
            instance.start_date = start_date
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GetPublicEditHistory:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = float(dict_["offset"])
        elif include_empty:
            instance.offset = float()
        if "pageSize" in dict_ and dict_["pageSize"] is not None:
            instance.page_size = float(dict_["pageSize"])
        elif include_empty:
            instance.page_size = float()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "endDate": "end_date",
            "offset": "offset",
            "pageSize": "page_size",
            "startDate": "start_date",
            "type": "type_",
        }

    # endregion static methods
