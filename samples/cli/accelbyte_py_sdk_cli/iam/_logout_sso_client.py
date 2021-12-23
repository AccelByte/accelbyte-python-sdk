# justice-iam-service (4.9.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-command.j2

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
from accelbyte_py_sdk.api.iam import logout_sso_client as logout_sso_client_internal
from accelbyte_py_sdk.api.iam.models import RestErrorResponse


@click.command()
@click.argument("platform_id", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def logout_sso_client(
        platform_id: str,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(logout_sso_client_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = logout_sso_client_internal(
        platform_id=platform_id,
    )
    if error:
        raise Exception(f"LogoutSSOClient failed: {str(error)}")
    click.echo("LogoutSSOClient success")
