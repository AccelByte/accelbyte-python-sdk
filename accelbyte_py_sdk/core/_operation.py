# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Any, Dict, List, Optional, Union

from ._header import Header
from ._utils import infer_headers_from_operation


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

    # endregion overrideable members
