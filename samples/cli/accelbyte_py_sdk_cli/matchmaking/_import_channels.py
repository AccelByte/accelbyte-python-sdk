# Justice Matchmaking Service (2.12.0)

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
from ....api.matchmaking import import_channels as import_channels_internal
from ....api.matchmaking.models import ModelsImportConfigResponse
from ....api.matchmaking.models import ResponseErrorV1


@click.command()
@click.option("--file", "file", type=str)
@click.option("--strategy", "strategy", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def import_channels(
        file: Optional[str] = None,
        strategy: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(import_channels_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = import_channels_internal(
        file=file,
        strategy=strategy,
        namespace=namespace,
    )
    if error:
        raise Exception(f"ImportChannels failed: {str(error)}")
    click.echo("ImportChannels success")
