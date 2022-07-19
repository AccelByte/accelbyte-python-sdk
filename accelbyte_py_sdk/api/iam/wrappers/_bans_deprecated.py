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
from ....core import deprecated
from ....core import same_doc_as

from ..models import AccountcommonBanReasons
from ..models import AccountcommonBans

from ..operations.bans_deprecated import GetBansType
from ..operations.bans_deprecated import GetListBanReason


@deprecated
@same_doc_as(GetBansType)
def get_bans_type(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    request = GetBansType.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetBansType)
async def get_bans_type_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetBansType.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetListBanReason)
def get_list_ban_reason(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetListBanReason.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetListBanReason)
async def get_list_ban_reason_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetListBanReason.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
