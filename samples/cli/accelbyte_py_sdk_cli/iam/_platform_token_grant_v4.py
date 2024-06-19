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
    platform_token_grant_v4 as platform_token_grant_v4_internal,
)
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelLoginQueueTicketResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3


@click.command()
@click.argument("platform_id", type=str)
@click.option("--additional_data", "additional_data", type=str)
@click.option("--client_id", "client_id", type=str)
@click.option("--create_headless", "create_headless", type=bool)
@click.option("--device_id", "device_id", type=str)
@click.option("--mac_address", "mac_address", type=str)
@click.option("--platform_token", "platform_token", type=str)
@click.option("--service_label", "service_label", type=float)
@click.option("--skip_set_cookie", "skip_set_cookie", type=bool)
@click.option("--code_challenge", "code_challenge", type=str)
@click.option("--code_challenge_method", "code_challenge_method", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def platform_token_grant_v4(
    platform_id: str,
    additional_data: Optional[str] = None,
    client_id: Optional[str] = None,
    create_headless: Optional[bool] = None,
    device_id: Optional[str] = None,
    mac_address: Optional[str] = None,
    platform_token: Optional[str] = None,
    service_label: Optional[float] = None,
    skip_set_cookie: Optional[bool] = None,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(platform_token_grant_v4_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = platform_token_grant_v4_internal(
        platform_id=platform_id,
        additional_data=additional_data,
        client_id=client_id,
        create_headless=create_headless,
        device_id=device_id,
        mac_address=mac_address,
        platform_token=platform_token,
        service_label=service_label,
        skip_set_cookie=skip_set_cookie,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"PlatformTokenGrantV4 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


platform_token_grant_v4.operation_id = "PlatformTokenGrantV4"
platform_token_grant_v4.is_deprecated = False
