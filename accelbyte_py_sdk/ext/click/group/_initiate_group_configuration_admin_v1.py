import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import initiate_group_configuration_admin_v1 as initiate_group_configuration_admin_v1_internal
from ....api.group.models import ModelsCreateGroupConfigurationResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def initiate_group_configuration_admin_v1(
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(initiate_group_configuration_admin_v1_internal.__doc__)
    result, error = initiate_group_configuration_admin_v1_internal(
        namespace=namespace,
    )
    if error:
        raise Exception(f"initiateGroupConfigurationAdminV1 failed: {str(error)}")
    click.echo("initiateGroupConfigurationAdminV1 success")
