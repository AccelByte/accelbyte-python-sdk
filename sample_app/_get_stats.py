import yaml

import click

from accelbyte_py_sdk.api.social import get_stats as get_stats_internal

from ._utils import login_user


@click.command()
@click.option("--offset", type=int)
@click.option("--limit", type=int, default=10)
@click.option("--namespace")
@click.option("--doc", type=bool)
def get_stats(
        offset,
        limit,
        namespace,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(get_stats_internal.__doc__)
    result, error = get_stats_internal(
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get stats success.")
    click.echo(yaml.safe_dump(result.to_dict()))
