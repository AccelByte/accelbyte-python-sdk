# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# Accelbyte Cloud Iam Service (5.23.0)

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
from accelbyte_py_sdk.api.iam import token_grant as token_grant_internal
from accelbyte_py_sdk.api.iam.models import OauthmodelErrorResponse
from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponse


@click.command()
@click.argument("grant_type", type=str)
@click.option("--device_id", "device_id", type=str)
@click.option("--code", "code", type=str)
@click.option("--extend_exp", "extend_exp", type=bool)
@click.option("--password", "password", type=str)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--refresh_token", "refresh_token", type=str)
@click.option("--username", "username", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def token_grant(
    grant_type: str,
    device_id: Optional[str] = None,
    code: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    password: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    refresh_token: Optional[str] = None,
    username: Optional[str] = None,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(token_grant_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = token_grant_internal(
        grant_type=grant_type,
        device_id=device_id,
        code=code,
        extend_exp=extend_exp,
        password=password,
        redirect_uri=redirect_uri,
        refresh_token=refresh_token,
        username=username,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"TokenGrant failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


token_grant.operation_id = "TokenGrant"
token_grant.is_deprecated = True
