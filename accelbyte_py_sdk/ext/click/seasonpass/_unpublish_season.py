# justice-seasonpass-service (1.5.0)

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
from ....api.seasonpass import unpublish_season as unpublish_season_internal
from ....api.seasonpass.models import ErrorEntity
from ....api.seasonpass.models import SeasonInfo


@click.command()
@click.argument("season_id", type=str)
@click.option("--force", "force", type=bool)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def unpublish_season(
        season_id: str,
        force: Optional[bool] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(unpublish_season_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = unpublish_season_internal(
        season_id=season_id,
        force=force,
        namespace=namespace,
    )
    if error:
        raise Exception(f"unpublishSeason failed: {str(error)}")
    click.echo("unpublishSeason success")
