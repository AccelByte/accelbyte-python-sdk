# justice-platform-service (3.34.0)

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
from ....api.platform import update_stadia_json_config_file as update_stadia_json_config_file_internal
from ....api.platform.models import StadiaIAPConfigInfo


@click.command()
@click.option("--file", "file", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def update_stadia_json_config_file(
        file: Optional[str] = None,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(update_stadia_json_config_file_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = update_stadia_json_config_file_internal(
        file=file,
        namespace=namespace,
    )
    if error:
        raise Exception(f"updateStadiaJsonConfigFile failed: {str(error)}")
    click.echo("updateStadiaJsonConfigFile success")