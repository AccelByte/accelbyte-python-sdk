# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-command.j2

# AGS Leaderboard Service (2.24.0)

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
from accelbyte_py_sdk.api.leaderboard import (
    delete_user_rankings_admin_v3 as delete_user_rankings_admin_v3_internal,
)
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse


@click.command()
@click.argument("user_id", type=str)
@click.argument("leaderboard_code", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--login_with_auth", type=str)
@click.option("--doc", type=bool)
def delete_user_rankings_admin_v3(
    user_id: str,
    leaderboard_code: str,
    namespace: Optional[str] = None,
    login_as: Optional[str] = None,
    login_with_auth: Optional[str] = None,
    doc: Optional[bool] = None,
):
    if doc:
        click.echo(delete_user_rankings_admin_v3_internal.__doc__)
        return
    x_additional_headers = None
    if login_with_auth:
        x_additional_headers = {"Authorization": login_with_auth}
    else:
        login_as_internal(login_as)
    if leaderboard_code is not None:
        try:
            leaderboard_code_json = json.loads(leaderboard_code)
            leaderboard_code = [str(i0) for i0 in leaderboard_code_json]
        except ValueError as e:
            raise Exception(f"Invalid JSON for 'leaderboardCode'. {str(e)}") from e
    result, error = delete_user_rankings_admin_v3_internal(
        user_id=user_id,
        leaderboard_code=leaderboard_code,
        namespace=namespace,
        x_additional_headers=x_additional_headers,
    )
    if error:
        raise Exception(f"deleteUserRankingsAdminV3 failed: {str(error)}")
    click.echo(yaml.safe_dump(to_dict(result), sort_keys=False))


delete_user_rankings_admin_v3.operation_id = "deleteUserRankingsAdminV3"
delete_user_rankings_admin_v3.is_deprecated = False
