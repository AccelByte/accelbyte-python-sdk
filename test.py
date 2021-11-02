import logging
from unittest import TestLoader, TextTestRunner

import tests


def set_logger_level(level):
    from accelbyte_py_sdk import __name__ as module_name
    logging.basicConfig()
    logging.getLogger(module_name).setLevel(level)


if __name__ == "__main__":

    loader = TestLoader()
    suite = loader.loadTestsFromModule(tests)
    runner = TextTestRunner()
    runner.run(suite)
