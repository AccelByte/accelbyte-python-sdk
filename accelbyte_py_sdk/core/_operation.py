from typing import Any, Dict, List, Optional, Union

from ._header import Header
from ._utils import infer_headers_from_operation


class Operation:

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
    security: Optional[str] = None
    location_query: Optional[str] = None

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        raise NotImplementedError

    def get_all_params(self) -> dict:
        raise NotImplementedError

    def parse_response(self, code: int, content_type: str, content: Any):
        raise NotImplementedError

    # noinspection PyMethodMayBeStatic
    def get_body_params(self) -> Any:
        # pylint: disable=no-self-use
        return {}

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

    # endregion overrideable members
