# justice-group-service (2.9.0)

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
from ....api.group import get_group_configuration_admin_v1 as get_group_configuration_admin_v1_internal
from ....api.group.models import ModelsGetGroupConfigurationResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.argument("configuration_code", type=str)
@click.option("--namespace", type=str)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
@click.option("--doc", type=bool)
def get_group_configuration_admin_v1(
        configuration_code: str,
        namespace: Optional[str] = None,
        login_as: Optional[str] = None,
        doc: Optional[bool] = None,
):
    if doc:
        click.echo(get_group_configuration_admin_v1_internal.__doc__)
        return
    login_as_internal(login_as)
    _, error = get_group_configuration_admin_v1_internal(
        configuration_code=configuration_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getGroupConfigurationAdminV1 failed: {str(error)}")
    click.echo("getGroupConfigurationAdminV1 success")
