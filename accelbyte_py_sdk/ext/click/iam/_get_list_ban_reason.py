import json
from typing import Optional

import click

from .._utils import login_as as login_as_internal
from ....api.iam import get_list_ban_reason as get_list_ban_reason_internal
from ....api.iam.models import AccountcommonBanReasons


@click.command()
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_list_ban_reason(
        doc: Optional[bool] = None,
        login_as: Optional[str] = None,
):
    login_as_internal(login_as)
    if doc:
        click.echo(get_list_ban_reason_internal.__doc__)
    result, error = get_list_ban_reason_internal(
    )
    if error:
        raise Exception(f"GetListBanReason failed: {str(error)}")
    click.echo("GetListBanReason success")
