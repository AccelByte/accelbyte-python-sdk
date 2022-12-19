import logging
import re
import unittest.case
from argparse import ArgumentParser
from pathlib import Path
from typing import List, Optional


def set_logger_level(level):
    from accelbyte_py_sdk import __name__ as module_name

    logging.basicConfig()
    logging.getLogger(module_name).setLevel(level)


def reset():
    from accelbyte_py_sdk import reset

    reset()


def parse_args():
    def file_path(value: str) -> Optional[str]:
        path = Path(value).resolve()
        path_str = str(path)
        if not path.exists():
            logging.warning(f"FileNotFound: {path_str}")
            path_str = None
        return path_str

    def str_to_bool(value: str) -> bool:
        return value.lower() in ["1", "t", "true", "y", "yes"]

    parser = ArgumentParser()

    parser.add_argument("--test_core", default=True, type=str_to_bool, required=False)
    parser.add_argument(
        "--test_integration", default=False, type=str_to_bool, required=False
    )
    parser.add_argument(
        "--test_all", action="store_true", default=False, required=False
    )

    parser.add_argument(
        "--dotenv_file",
        default="tests/integration/.env",
        type=file_path,
        required=False,
    )
    parser.add_argument(
        "--use_dotenv", action="store_true", default=False, required=False
    )

    parser.add_argument(
        "-f",
        "--filter",
        default=None,
        type=str,
        required=False,
        help=f"performs a regex filter on test cases",
    )
    parser.add_argument(
        "-e",
        "--exclude",
        default=None,
        type=str,
        required=False,
        help=f"performs a regex exclude on test cases.",
    )

    parser.add_argument("--use_tap", action="store_true", default=False, required=False)

    result = vars(parser.parse_args())

    if result["test_all"]:
        for k, v in result.items():
            if not k.startswith("test_"):
                continue
            result[k] = True
    del result["test_all"]

    return result


# noinspection PyShadowingBuiltins
def should_skip(
    test_case: str, filter: Optional[str] = None, exclude: Optional[str] = None
) -> bool:
    if filter is not None and not re.match(filter, test_case):
        return True
    if exclude is not None and re.match(exclude, test_case):
        return True
    return False


# noinspection PyShadowingBuiltins
def load_tests_from_module(
    loader,
    module,
    filter: Optional[str] = None,
    exclude: Optional[str] = None,
    **kwargs,
) -> List[unittest.TestSuite]:
    tests = []
    for name in dir(module):
        obj = getattr(module, name)
        if (
            isinstance(obj, type)
            and obj != unittest.case.TestCase
            and issubclass(obj, unittest.case.TestCase)
        ):
            if should_skip(obj.__name__, filter=filter, exclude=exclude):
                continue
            suite = loader.loadTestsFromTestCase(obj)
            tests.append(suite)
    tests = loader.suiteClass(tests)
    return tests


def main(*args, **kwargs) -> None:
    import unittest

    loader = unittest.TestLoader()
    runner = None

    if kwargs.get("use_tap", False):
        try:
            import tap

            runner = tap.TAPTestRunner()
            runner.set_stream(True)
        except ImportError as e:
            pass

    if runner is None:
        runner = unittest.TextTestRunner()

    results = {"test_core": True, "test_integration": True}

    if kwargs.get("test_core", False):
        import tests.core
        import tests.sdk.core

        core_tests = load_tests_from_module(loader, tests.core, **kwargs)
        sdk_core_tests = load_tests_from_module(loader, tests.sdk.core, **kwargs)

        suite = unittest.TestSuite(
            [
                core_tests,
                sdk_core_tests,
            ]
        )
        results_core = runner.run(suite)
        results["test_core"] = results_core.wasSuccessful()

        reset()

    if kwargs.get("test_integration", False):
        import tests.integration

        dotenv_file = kwargs.get("dotenv_file", None)
        use_dotenv = kwargs.get("use_dotenv", False)
        if dotenv_file and use_dotenv:
            tests.integration.DOTENV_FILE = dotenv_file

        integration_tests = load_tests_from_module(loader, tests.integration, **kwargs)

        suite = unittest.TestSuite(
            [
                integration_tests,
            ]
        )

        results_integration = runner.run(suite)
        results["test_integration"] = results_integration.wasSuccessful()

        reset()

    exit(0 if all(results.values()) else 1)


if __name__ == "__main__":
    main(**parse_args())
