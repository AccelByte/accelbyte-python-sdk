# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# Analytics Game Telemetry (1.12.0)

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

from ..api.gametelemetry.models import HTTPValidationError
from ..api.gametelemetry.models import TelemetryBody
from ..api.gametelemetry.models import ValidationError


def create_http_validation_error_example() -> HTTPValidationError:
    instance = HTTPValidationError()
    instance.detail = [create_validation_error_example()]
    return instance


def create_telemetry_body_example() -> TelemetryBody:
    instance = TelemetryBody()
    instance.event_name = randomize()
    instance.event_namespace = randomize("slug")
    instance.payload = {randomize(): randomize()}
    return instance


def create_validation_error_example() -> ValidationError:
    instance = ValidationError()
    instance.loc = [randomize()]
    instance.msg = randomize()
    instance.type_ = randomize()
    return instance
