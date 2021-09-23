import yaml

import click

from accelbyte_py_sdk.api.social import query_stats as query_stats_internal

from ._utils import login_user


@click.command()
@click.argument("keyword")
@click.option("--offset", type=int)
@click.option("--limit", type=int, default=10)
@click.option("--namespace")
@click.option("--doc", type=bool)
def query_stats(
        keyword,
        offset,
        limit,
        namespace,
        doc,
):
    login_user(None, None)
    if doc:
        click.echo(query_stats_internal.__doc__)
    result, error = query_stats_internal(
        keyword=keyword,
        offset=offset,
        limit=limit,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Query stats success.")
    click.echo(yaml.safe_dump(result.to_dict()))
