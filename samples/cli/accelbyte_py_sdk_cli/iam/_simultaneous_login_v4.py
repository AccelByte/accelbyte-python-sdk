# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Iam Service

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

import json
import yaml
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from .._utils import to_dict
from accelbyte_py_sdk.api.iam import (
    simultaneous_login_v4 as simultaneous_login_v4_internal,
)
from accelbyte_py_sdk.api.iam.models import OauthmodelLoginQueueTicketResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse


@click.command()
@click.argument("native_platform", type=str)
@click.argument("native_platform_ticket", type=str)
@click.option("--simultaneous_platform", "simultaneous_platform", type=str)
@click.option("--simultaneous_ticket", "simultaneous_ticket", type=str)
@click.option("--code_challenge", "code_challenge", type=str)
@click.option("--code_challenge_method", "code_challenge_method", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def simultaneous_login_v4(
    native_platform: str,
    native_platform_ticket: str,
    simultaneous_platform: Optional[str] = None,
    simultaneous_ticket: Optional[str] = None,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(simultaneous_login_v4_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = simultaneous_login_v4_internal(
        native_platform=native_platform,
        native_platform_ticket=native_platform_ticket,
        simultaneous_platform=simultaneous_platform,
        simultaneous_ticket=simultaneous_ticket,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"SimultaneousLoginV4 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


simultaneous_login_v4.operation_id = "SimultaneousLoginV4"
simultaneous_login_v4.is_deprecated = False
