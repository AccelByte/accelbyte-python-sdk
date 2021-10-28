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
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_group_configuration_admin_v1(
        configuration_code: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_group_configuration_admin_v1_internal.__doc__)
    result, error = get_group_configuration_admin_v1_internal(
        configuration_code=configuration_code,
        namespace=namespace,
    )
    if error:
        raise Exception(f"getGroupConfigurationAdminV1 failed: {str(error)}")
    click.echo("getGroupConfigurationAdminV1 success")
