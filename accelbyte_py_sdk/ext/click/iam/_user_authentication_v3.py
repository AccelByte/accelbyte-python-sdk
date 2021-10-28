# justice-iam-service (4.4.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import user_authentication_v3 as user_authentication_v3_internal


@click.command()
@click.argument("user_name", type=str)
@click.argument("password", type=str)
@click.argument("request_id", type=str)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--client_id", "client_id", type=str)
@click.option("--extend_exp", "extend_exp", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def user_authentication_v3(
        user_name: str,
        password: str,
        request_id: str,
        redirect_uri: Optional[str] = None,
        client_id: Optional[str] = None,
        extend_exp: Optional[bool] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(user_authentication_v3_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = user_authentication_v3_internal(
        user_name=user_name,
        password=password,
        request_id=request_id,
        redirect_uri=redirect_uri,
        client_id=client_id,
        extend_exp=extend_exp,
    )
    if error:
        raise Exception(f"UserAuthenticationV3 failed: {str(error)}")
    click.echo("UserAuthenticationV3 success")
