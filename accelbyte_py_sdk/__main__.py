import click

from .core import initialize
from .ext.click.iam import commands as iam_commands


@click.group()
def entry_point():
    initialize()


def add_commands(grp, cmds, prefix: str = None):
    for cmd in cmds:
        grp.add_command(cmd, name=f"{f'{prefix}-' if prefix is not None else ''}{cmd.name}")


add_commands(entry_point, iam_commands, prefix="iam")


if __name__ == "__main__":
    entry_point()
