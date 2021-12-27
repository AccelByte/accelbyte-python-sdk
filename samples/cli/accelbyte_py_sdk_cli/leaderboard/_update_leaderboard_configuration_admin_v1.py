# justice-leaderboard-service (2.11.0)

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
from accelbyte_py_sdk.api.leaderboard import update_leaderboard_configuration_admin_v1 as update_leaderboard_configuration_admin_v1_internal
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardConfigResp
from accelbyte_py_sdk.api.leaderboard.models import ModelsUpdateLeaderboardConfigReq
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse


@click.command()
@click.argument("body", type=str)
@click.argument("leaderboard_code", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def update_leaderboard_configuration_admin_v1(
        body: str,
        leaderboard_code: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(update_leaderboard_configuration_admin_v1_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        body_json = json.loads(body)
        body = ModelsUpdateLeaderboardConfigReq.create_from_dict(body_json)
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'body'. {str(e)}") from e
    _, error = update_leaderboard_configuration_admin_v1_internal(
        body=body,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateLeaderboardConfigurationAdminV1 failed: {str(error)}")
    click.echo("updateLeaderboardConfigurationAdminV1 success")