import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.group import delete_group_configuration_global_rule_admin_v1 as delete_group_configuration_global_rule_admin_v1_internal
from ....api.group.models import ModelsUpdateGroupConfigurationResponseV1
from ....api.group.models import ResponseErrorResponse


@click.command()
@click.argument("configuration_code", type=str)
@click.argument("allowed_action", type=str)
@click.option("--namespace", type=str)
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_group_configuration_global_rule_admin_v1(
        configuration_code: str,
        allowed_action: str,
        namespace: Optional[str] = None,
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_group_configuration_global_rule_admin_v1_internal.__doc__)
    result, error = delete_group_configuration_global_rule_admin_v1_internal(
        configuration_code=configuration_code,
        allowed_action=allowed_action,
        namespace=namespace,
    )
    if error:
        raise Exception(f"deleteGroupConfigurationGlobalRuleAdminV1 failed: {str(error)}")
    click.echo("deleteGroupConfigurationGlobalRuleAdminV1 success")
