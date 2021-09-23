import click

import accelbyte_py_sdk


@click.group()
def entry_point():
    accelbyte_py_sdk.initialize()


if __name__ == "__main__":
    entry_point()
