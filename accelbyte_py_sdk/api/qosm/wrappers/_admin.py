# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
# 
# Code generated. DO NOT EDIT!

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

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import ModelsSetAliasRequest
from ..models import ResponseError

from ..operations.admin import DeleteServer
from ..operations.admin import SetServerAlias


@same_doc_as(DeleteServer)
def delete_server(region: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = DeleteServer.create(
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(DeleteServer)
async def delete_server_async(region: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = DeleteServer.create(
        region=region,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(SetServerAlias)
def set_server_alias(body: ModelsSetAliasRequest, region: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = SetServerAlias.create(
        body=body,
        region=region,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(SetServerAlias)
async def set_server_alias_async(body: ModelsSetAliasRequest, region: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = SetServerAlias.create(
        body=body,
        region=region,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)
