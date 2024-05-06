# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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


from ..operations.operations import BlockHandler
from ..operations.operations import CmdlineHandler
from ..operations.operations import GoroutineHandler
from ..operations.operations import HeapHandler
from ..operations.operations import IndexHandler
from ..operations.operations import Profile
from ..operations.operations import SymbolHandler
from ..operations.operations import ThreadcreateHandler


@same_doc_as(BlockHandler)
def block_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Block handler (blockHandler)

    Properties:
        url: /group/debug/pprof/block

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = BlockHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BlockHandler)
async def block_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Block handler (blockHandler)

    Properties:
        url: /group/debug/pprof/block

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = BlockHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CmdlineHandler)
def cmdline_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Cmdline handler (cmdlineHandler)

    Properties:
        url: /group/debug/pprof/cmdline

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = CmdlineHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CmdlineHandler)
async def cmdline_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Cmdline handler (cmdlineHandler)

    Properties:
        url: /group/debug/pprof/cmdline

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = CmdlineHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GoroutineHandler)
def goroutine_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Goroutine handler (goroutineHandler)

    Properties:
        url: /group/debug/pprof/goroutine

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GoroutineHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GoroutineHandler)
async def goroutine_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Goroutine handler (goroutineHandler)

    Properties:
        url: /group/debug/pprof/goroutine

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = GoroutineHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(HeapHandler)
def heap_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Heap handler (heapHandler)

    Properties:
        url: /group/debug/pprof/heap

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = HeapHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(HeapHandler)
async def heap_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Heap handler (heapHandler)

    Properties:
        url: /group/debug/pprof/heap

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = HeapHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(IndexHandler)
def index_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Index handler (indexHandler)

    Properties:
        url: /group/debug/pprof

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = IndexHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(IndexHandler)
async def index_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Index handler (indexHandler)

    Properties:
        url: /group/debug/pprof

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = IndexHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Profile)
def profile(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Profile (profile)

    Properties:
        url: /group/debug/pprof/profile

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = Profile.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Profile)
async def profile_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Profile (profile)

    Properties:
        url: /group/debug/pprof/profile

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = Profile.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SymbolHandler)
def symbol_handler(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Symbol handler (symbolHandler)

    Properties:
        url: /group/debug/pprof/symbol

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = SymbolHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SymbolHandler)
async def symbol_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Symbol handler (symbolHandler)

    Properties:
        url: /group/debug/pprof/symbol

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = SymbolHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ThreadcreateHandler)
def threadcreate_handler(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Threadcreate handler (threadcreateHandler)

    Properties:
        url: /group/debug/pprof/threadcreate

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = ThreadcreateHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ThreadcreateHandler)
async def threadcreate_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Threadcreate handler (threadcreateHandler)

    Properties:
        url: /group/debug/pprof/threadcreate

        method: GET

        tags: []

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - (OK)
    """
    request = ThreadcreateHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
