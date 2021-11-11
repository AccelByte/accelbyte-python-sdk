# justice-iam-service (4.7.0)

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
from ....api.iam import authorize_v3 as authorize_v3_internal


@click.command()
@click.argument("client_id", type=str)
@click.argument("response_type", type=str)
@click.option("--code_challenge", "code_challenge", type=str)
@click.option("--code_challenge_method", "code_challenge_method", type=str)
@click.option("--redirect_uri", "redirect_uri", type=str)
@click.option("--scope", "scope", type=str)
@click.option("--state", "state", type=str)
@click.option("--target_auth_page", "target_auth_page", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def authorize_v3(
        client_id: str,
        response_type: str,
        code_challenge: Optional[str] = None,
        code_challenge_method: Optional[str] = None,
        redirect_uri: Optional[str] = None,
        scope: Optional[str] = None,
        state: Optional[str] = None,
        target_auth_page: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(authorize_v3_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = authorize_v3_internal(
        client_id=client_id,
        response_type=response_type,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        redirect_uri=redirect_uri,
        scope=scope,
        state=state,
        target_auth_page=target_auth_page,
    )
    if error:
        raise Exception(f"AuthorizeV3 failed: {str(error)}")
    click.echo("AuthorizeV3 success")
