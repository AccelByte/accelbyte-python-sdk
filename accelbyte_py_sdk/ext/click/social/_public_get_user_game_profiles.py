# justice-social-service (1.21.0)

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
from ....api.social import public_get_user_game_profiles as public_get_user_game_profiles_internal
from ....api.social.models import ErrorEntity
from ....api.social.models import UserGameProfiles


@click.command()
@click.argument("user_ids", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def public_get_user_game_profiles(
        user_ids: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(public_get_user_game_profiles_internal.__doc__)
        return
    login_as_internal(login_as)
    try:
        user_ids_json = json.loads(user_ids)
        user_ids = [str(i0) for i0 in user_ids_json]
    except ValueError as e:
        raise Exception(f"Invalid JSON for 'userIds'. {str(e)}") from e
    _, error = public_get_user_game_profiles_internal(
        user_ids=user_ids,
        namespace=namespace,
    )
    if error:
        raise Exception(f"publicGetUserGameProfiles failed: {str(error)}")
    click.echo("publicGetUserGameProfiles success")
