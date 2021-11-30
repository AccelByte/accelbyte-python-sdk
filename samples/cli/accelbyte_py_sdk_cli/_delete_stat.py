import yaml

import click

from accelbyte_py_sdk.api.social import delete_stat as delete_stat_internal

from ._utils import login_as as login_as_internal


@click.command()
@click.argument("stat_code")
@click.option("--namespace")
@click.option("--doc", type=bool)
@click.option("--login_as", type=click.Choice(["client", "user"], case_sensitive=False))
def delete_stat(
        stat_code,
        namespace,
        doc,
        login_as,
):
    login_as_internal(login_as)
    if doc:
        click.echo(delete_stat_internal.__doc__)
    result, error = delete_stat_internal(
        stat_code=stat_code,
        namespace=namespace,
    )
    if error:
        raise Exception(str(error))
    click.echo("Delete stat success.")
    click.echo(yaml.safe_dump(result.to_dict()))
