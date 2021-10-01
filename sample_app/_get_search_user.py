import yaml

import click

from accelbyte_py_sdk.api.iam import admin_search_user_v3

from ._utils import login_as as login_as_internal


@click.command()
@click.option("--query")
@click.option("--limit", type=int)
@click.option("--offset")
@click.option("--start_date")
@click.option("--end_date")
@click.option("--by")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def get_search_user(
        query,
        limit,
        offset,
        start_date,
        end_date,
        by,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(admin_search_user_v3.__doc__)
    result, error = admin_search_user_v3(
        query=query,
        limit=limit,
        offset=offset,
        start_date=start_date,
        end_date=end_date,
        by=by,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Get search user success.")
    click.echo(yaml.safe_dump(result.to_dict()))
