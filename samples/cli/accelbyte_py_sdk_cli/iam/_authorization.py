# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Iam Service (7.8.3)

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
from accelbyte_py_sdk.api.iam import authorization as authorization_internal


@click.command()
@click.argument("client_id", type=str)
@click.argument("redirect_uri", type=str)
@click.argument("response_type", type=str)
@click.option("--login", "login", type=str)
@click.option("--password", "password", type=str)
@click.option("--scope", "scope", type=str)
@click.option("--state", "state", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def authorization(
    client_id: str,
    redirect_uri: str,
    response_type: str,
    login: Optional[str] = None,
    password: Optional[str] = None,
    scope: Optional[str] = None,
    state: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(authorization_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    result, error = authorization_internal(
        client_id=client_id,
        redirect_uri=redirect_uri,
        response_type=response_type,
        login=login,
        password=password,
        scope=scope,
        state=state,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"Authorization failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


authorization.operation_id = "Authorization"
authorization.is_deprecated = True
