# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from ._http_response import HttpResponse
from ._header import Header
from ._utils import clean_content_type
from ._utils import infer_headers_from_operation
from ._utils import try_convert_content_type


class Operation:

    @staticmethod
    def create_full_url(
            url: str,
            base_url: Union[None, str] = None,
            path_params: Union[None, dict] = None,
            query_params: Union[None, dict] = None,
            collection_format_map: Optional[Dict[str, Optional[str]]] = None
    ) -> str:
        collection_format_map = collection_format_map or {}

        # base url
        if base_url:
            if base_url.endswith("/"):
                base_url = base_url.removesuffix("/")
            result = base_url
        else:
            result = ""

        # path params
        if path_params:
            for k, v in path_params.items():
                url = url.replace(f"{{{k}}}", str(v))

        result += url

        # query params
        if query_params:
            default_query_delimiter = ","
            query_delimiters_map = {"csv": ",", "ssv": " ", "tsv": "\t", "pipes": "|"}
            flattened_query_params = []
            for k, v in query_params.items():
                if isinstance(v, list):
                    if len(v) == 0:
                        continue
                    collection_format = collection_format_map.get(k, None)
                    if collection_format == "multi":
                        flattened_query_value = str(v[0])
                        if len(v) > 1:
                            flattened_query_value += "&" + "&".join([f"{k}={str(w)}" for w in v[1:]])
                    else:
                        delimiter = query_delimiters_map.get(collection_format, default_query_delimiter)
                        flattened_query_value = delimiter.join([str(w) for w in v])
                else:
                    flattened_query_value = str(v)
                flattened_query_params.append(f"{k}={flattened_query_value}")
            result += "?" + "&".join(flattened_query_params)

        return result

    def get_headers(self) -> Header:
        headers = Header()
        headers.update(self.get_header_params())
        infer_headers_from_operation(self, existing=headers)
        return headers

    # noinspection PyMethodMayBeStatic
    def pre_process_response(
            self,
            code: int,
            content_type: str,
            content: Any
    ) -> Tuple[Tuple[int, str, Any], Optional[HttpResponse]]:
        # pylint: disable=no-self-use
        if len(self.produces) > 0 and \
                content and \
                content_type not in ["location"]:
            actual_content_type = clean_content_type(content_type)
            if actual_content_type not in self.produces:
                was_converted, converted_content = try_convert_content_type(
                    actual_content_type=actual_content_type,
                    expected_content_types=self.produces,
                    content=content
                )
                if was_converted:
                    content = converted_content
                else:
                    return (code, content_type, content), \
                           HttpResponse.create_unexpected_content_type_error(
                               actual=actual_content_type,
                               expected=self.produces
                           )
        return (code, content_type, content), None

    # noinspection PyMethodMayBeStatic
    def handle_undocumented_response(
            self,
            code: int,
            content_type: str,
            content: Any
    ) -> Optional[HttpResponse]:
        # pylint: disable=no-self-use
        undocumented_response = HttpResponse.create_undocumented_response(
            code=code,
            content=content
        )
        if undocumented_response is not None:
            if undocumented_response.is_no_content():
                return None
            else:
                return undocumented_response
        else:
            return HttpResponse.create_unhandled_error()

    # region overrideable members

    url: str = ""
    method: str = ""
    consumes: List[str] = []
    produces: List[str] = []
    security_type: Optional[str] = None
    location_query: Optional[str] = None
    authorization_override: Optional[str] = None

    def get_full_url(
            self,
            base_url: Union[None, str] = None,
            collection_format_map: Optional[Dict[str, Optional[str]]] = None
    ) -> str:
        raise NotImplementedError

    def get_all_params(self) -> dict:
        raise NotImplementedError

    def parse_response(self, code: int, content_type: str, content: Any):
        raise NotImplementedError

    # noinspection PyMethodMayBeStatic
    def get_body_params(self) -> Any:
        # pylint: disable=no-self-use
        return None

    # noinspection PyMethodMayBeStatic
    def get_header_params(self) -> dict:
        # pylint: disable=no-self-use
        return {}

    # noinspection PyMethodMayBeStatic
    def get_form_data_params(self) -> dict:
        # pylint: disable=no-self-use
        return {}

    # noinspection PyMethodMayBeStatic
    def get_path_params(self) -> dict:
        # pylint: disable=no-self-use
        return {}

    # noinspection PyMethodMayBeStatic
    def get_query_params(self) -> dict:
        # pylint: disable=no-self-use
        return {}

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        return True

    # noinspection PyMethodMayBeStatic
    def has_redirects(self) -> bool:
        # pylint: disable=no-self-use
        return False

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        raise NotImplementedError

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {}

    @staticmethod
    def get_enum_map() -> Dict[str, Union[None, List[Any]]]:
        return {}

    # endregion overrideable members
