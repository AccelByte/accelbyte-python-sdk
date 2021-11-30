import yaml

import click

from accelbyte_py_sdk.api.social import query_stats as query_stats_internal

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("keyword")
@click.option("--offset", type=int)
@click.option("--limit", type=int, default=10)
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def query_stats(
        keyword,
        offset,
        limit,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
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
