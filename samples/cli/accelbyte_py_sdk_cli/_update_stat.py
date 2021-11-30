import json
import yaml

import click

from accelbyte_py_sdk.api.social import update_stat as update_stat_internal
from accelbyte_py_sdk.api.social.models import StatUpdate

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("stat_code")
@click.argument("stat_update")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def update_stat(
        stat_code,
        stat_update,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(update_stat_internal.__doc__)
    stat_update = json.loads(stat_update)
    body = StatUpdate.create_from_dict(stat_update)
    result, error = update_stat_internal(
        stat_code=stat_code,
        body=body,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Update stat success.")
    click.echo(yaml.safe_dump(result.to_dict()))
