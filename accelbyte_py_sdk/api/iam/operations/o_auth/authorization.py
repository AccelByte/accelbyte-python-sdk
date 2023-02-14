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

# AccelByte Cloud Iam Service (5.27.2)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum
from .....core import deprecated


@deprecated
class ResponseTypeEnum(StrEnum):
    CODE = "code"
    TOKEN = "token"


class Authorization(Operation):
    """OAuth2 authorize API (Authorization)

    ## The endpoint is going to be deprecated


    The endpoint supports two response types:



    1. Response Type == "code":




    The endpoint returns an authorization code that will be used by the IAM client to exchange for an access token. It supports two different headers, the basic and the bearer header. Each behaves differently.






      *


    The basic header




    The basic headerâs value is the base64 of the client ID and client secret. It is used by the developer whenever the developer authorizes a user on a same namespace.





      *


    The bearer header




    The bearer headerâs value is an access token. It is used by the developer whenever the developer authorizes a user on a different namespace. The endpoint validates userâs entitlement on the designated namespace for making sure the user is authorized for a designated namespace.








    Following are the responses returned by the endpoint:






      *  Authorize success : redirects to the given URL with the following information: ?code={authorization code}&state;={state}



      *  Authorize failure : redirects to the given URL with the following information:?error=access_denied&error;_description=...






     2. Response Type == "token" (Implicit) is deprecated.




     Endpoint migration guide






      *  Substitute endpoint (for: basic header style): /iam/v3/oauth/authorize [GET]


      *  Substitute endpoint (for: bearer header style):
        step1: /iam/v3/namespace/{namespace}/token/request [POST] => get code
        step2: /iam/v3/token/exchange [POST] => get token by step1's code



      *  Note:
        1. V3 is standard OAuth2 flow and support PKCE
        2. Will not support implicit flow in v3.

    Properties:
        url: /iam/oauth/authorize

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        login: (login) OPTIONAL str in form_data

        password: (password) OPTIONAL str in form_data

        scope: (scope) OPTIONAL str in form_data

        state: (state) OPTIONAL str in form_data

        client_id: (client_id) REQUIRED str in form_data

        redirect_uri: (redirect_uri) REQUIRED str in form_data

        response_type: (response_type) REQUIRED Union[str, ResponseTypeEnum] in form_data

    Responses:
        302: Found - (Found)
    """

    # region fields

    _url: str = "/iam/oauth/authorize"
    _method: str = "POST"
    _consumes: List[str] = ["application/x-www-form-urlencoded"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = "PLACEHOLDER"

    login: str  # OPTIONAL in [form_data]
    password: str  # OPTIONAL in [form_data]
    scope: str  # OPTIONAL in [form_data]
    state: str  # OPTIONAL in [form_data]
    client_id: str  # REQUIRED in [form_data]
    redirect_uri: str  # REQUIRED in [form_data]
    response_type: Union[str, ResponseTypeEnum]  # REQUIRED in [form_data]

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
            "form_data": self.get_form_data_params(),
        }

    def get_form_data_params(self) -> dict:
        result = {}
        if hasattr(self, "login"):
            result["login"] = self.login
        if hasattr(self, "password"):
            result["password"] = self.password
        if hasattr(self, "scope"):
            result["scope"] = self.scope
        if hasattr(self, "state"):
            result["state"] = self.state
        if hasattr(self, "client_id"):
            result["client_id"] = self.client_id
        if hasattr(self, "redirect_uri"):
            result["redirect_uri"] = self.redirect_uri
        if hasattr(self, "response_type"):
            result["response_type"] = self.response_type
        return result

    # endregion get_x_params methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        """Returns True if this operation has redirects, otherwise False.

        302: Found - (Found)
        """
        return True

    # endregion is/has methods

    # region with_x methods

    def with_login(self, value: str) -> Authorization:
        self.login = value
        return self

    def with_password(self, value: str) -> Authorization:
        self.password = value
        return self

    def with_scope(self, value: str) -> Authorization:
        self.scope = value
        return self

    def with_state(self, value: str) -> Authorization:
        self.state = value
        return self

    def with_client_id(self, value: str) -> Authorization:
        self.client_id = value
        return self

    def with_redirect_uri(self, value: str) -> Authorization:
        self.redirect_uri = value
        return self

    def with_response_type(self, value: Union[str, ResponseTypeEnum]) -> Authorization:
        self.response_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "login") and self.login:
            result["login"] = str(self.login)
        elif include_empty:
            result["login"] = ""
        if hasattr(self, "password") and self.password:
            result["password"] = str(self.password)
        elif include_empty:
            result["password"] = ""
        if hasattr(self, "scope") and self.scope:
            result["scope"] = str(self.scope)
        elif include_empty:
            result["scope"] = ""
        if hasattr(self, "state") and self.state:
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = ""
        if hasattr(self, "client_id") and self.client_id:
            result["client_id"] = str(self.client_id)
        elif include_empty:
            result["client_id"] = ""
        if hasattr(self, "redirect_uri") and self.redirect_uri:
            result["redirect_uri"] = str(self.redirect_uri)
        elif include_empty:
            result["redirect_uri"] = ""
        if hasattr(self, "response_type") and self.response_type:
            result["response_type"] = str(self.response_type)
        elif include_empty:
            result["response_type"] = Union[str, ResponseTypeEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        302: Found - (Found)

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

        if code == 302:
            return HttpResponse.create_redirect(code, content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        client_id: str,
        redirect_uri: str,
        response_type: Union[str, ResponseTypeEnum],
        login: Optional[str] = None,
        password: Optional[str] = None,
        scope: Optional[str] = None,
        state: Optional[str] = None,
    ) -> Authorization:
        instance = cls()
        instance.client_id = client_id
        instance.redirect_uri = redirect_uri
        instance.response_type = response_type
        if login is not None:
            instance.login = login
        if password is not None:
            instance.password = password
        if scope is not None:
            instance.scope = scope
        if state is not None:
            instance.state = state
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Authorization:
        instance = cls()
        if "login" in dict_ and dict_["login"] is not None:
            instance.login = str(dict_["login"])
        elif include_empty:
            instance.login = ""
        if "password" in dict_ and dict_["password"] is not None:
            instance.password = str(dict_["password"])
        elif include_empty:
            instance.password = ""
        if "scope" in dict_ and dict_["scope"] is not None:
            instance.scope = str(dict_["scope"])
        elif include_empty:
            instance.scope = ""
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = ""
        if "client_id" in dict_ and dict_["client_id"] is not None:
            instance.client_id = str(dict_["client_id"])
        elif include_empty:
            instance.client_id = ""
        if "redirect_uri" in dict_ and dict_["redirect_uri"] is not None:
            instance.redirect_uri = str(dict_["redirect_uri"])
        elif include_empty:
            instance.redirect_uri = ""
        if "response_type" in dict_ and dict_["response_type"] is not None:
            instance.response_type = str(dict_["response_type"])
        elif include_empty:
            instance.response_type = Union[str, ResponseTypeEnum]()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "login": "login",
            "password": "password",
            "scope": "scope",
            "state": "state",
            "client_id": "client_id",
            "redirect_uri": "redirect_uri",
            "response_type": "response_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "login": False,
            "password": False,
            "scope": False,
            "state": False,
            "client_id": True,
            "redirect_uri": True,
            "response_type": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "response_type": ["code", "token"],  # in form_data
        }

    # endregion static methods
