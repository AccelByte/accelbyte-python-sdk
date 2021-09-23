import json
import yaml

import click

from accelbyte_py_sdk.api.social import update_stat as update_stat_internal
from accelbyte_py_sdk.api.social.models import StatUpdate

from ._utils import login_user


@click.command()
@click.argument("stat_code")
@click.argument("stat_update")
@click.option("--namespace")
@click.option("--doc", type=bool)
def update_stat(
        stat_code,
        stat_update,
        namespace,
        doc,
):
    login_user(None, None)
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
