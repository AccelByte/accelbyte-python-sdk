# template file: justice_py_sdk_codegen/__main__.py

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
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

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import ModelsListServerResponse
from ..models import ResponseError

from ..operations.public import ListServer


@same_doc_as(ListServer)
def list_server(x_additional_headers: Optional[Dict[str, str]] = None):
    request = ListServer.create()
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ListServer)
async def list_server_async(x_additional_headers: Optional[Dict[str, str]] = None):
    request = ListServer.create()
    return await run_request_async(request, additional_headers=x_additional_headers)
