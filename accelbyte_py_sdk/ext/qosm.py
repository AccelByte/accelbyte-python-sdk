# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Qo S Manager Service ()

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

from .utils import randomize

from ..api.qosm.models import ModelsHeartbeatRequest
from ..api.qosm.models import ModelsListServerResponse
from ..api.qosm.models import ModelsServer
from ..api.qosm.models import ModelsSetAliasRequest
from ..api.qosm.models import ModelsUpdateServerRequest
from ..api.qosm.models import ResponseError


def create_models_heartbeat_request_example() -> ModelsHeartbeatRequest:
    instance = ModelsHeartbeatRequest()
    instance.ip = randomize()
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    return instance


def create_models_list_server_response_example() -> ModelsListServerResponse:
    instance = ModelsListServerResponse()
    instance.servers = [create_models_server_example()]
    return instance


def create_models_server_example() -> ModelsServer:
    instance = ModelsServer()
    instance.alias = randomize()
    instance.ip = randomize()
    instance.last_update = randomize("date")
    instance.port = randomize("int", min_val=1, max_val=1000)
    instance.region = randomize()
    instance.status = randomize()
    return instance


def create_models_set_alias_request_example() -> ModelsSetAliasRequest:
    instance = ModelsSetAliasRequest()
    instance.alias = randomize()
    return instance


def create_models_update_server_request_example() -> ModelsUpdateServerRequest:
    instance = ModelsUpdateServerRequest()
    instance.status = randomize()
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.code = randomize("int", min_val=1, max_val=1000)
    instance.message = randomize()
    return instance
