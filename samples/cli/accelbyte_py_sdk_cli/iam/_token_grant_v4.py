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
from accelbyte_py_sdk.api.iam import token_grant_v4 as token_grant_v4_internal
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelLoginQueueTicketResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenWithDeviceCookieResponseV3


@click.command()
@click.argument("grant_type", type=str)
@click.option("--auth_trust_id", "auth_trust_id", type=str)
@click.option("--device_id", "device_id", type=str)
@click.option("--additional_data", "additional_data", type=str)
@click.option("--client_id", "client_id", type=str)
@click.option("--client_secret", "client_secret", type=str)
@click.option("--code", "code", type=str)
@click.option("--code_verifier", "code_verifier", type=str)
@click.option("--extend_namespace", "extend_namespace", type=str)
@click.option("--extend_exp", "extend_exp", type=bool)
@click.option("--login_queue_ticket", "login_queue_ticket", type=str)
@click.option("--password", "password", type=str)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--refresh_token", "refresh_token", type=str)
@click.option("--scope", "scope", type=str)
@click.option("--username", "username", type=str)
@click.option("--code_challenge", "code_challenge", type=str)
@click.option("--code_challenge_method", "code_challenge_method", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def token_grant_v4(
    grant_type: str,
    auth_trust_id: Optional[str] = None,
    device_id: Optional[str] = None,
    additional_data: Optional[str] = None,
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    code: Optional[str] = None,
    code_verifier: Optional[str] = None,
    extend_namespace: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    login_queue_ticket: Optional[str] = None,
    password: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    refresh_token: Optional[str] = None,
    scope: Optional[str] = None,
    username: Optional[str] = None,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(token_grant_v4_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = token_grant_v4_internal(
        grant_type=grant_type,
        auth_trust_id=auth_trust_id,
        device_id=device_id,
        additional_data=additional_data,
        client_id=client_id,
        client_secret=client_secret,
        code=code,
        code_verifier=code_verifier,
        extend_namespace=extend_namespace,
        extend_exp=extend_exp,
        login_queue_ticket=login_queue_ticket,
        password=password,
        redirect_uri=redirect_uri,
        refresh_token=refresh_token,
        scope=scope,
        username=username,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"TokenGrantV4 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


token_grant_v4.operation_id = "TokenGrantV4"
token_grant_v4.is_deprecated = False
