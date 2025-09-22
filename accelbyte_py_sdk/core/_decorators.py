# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import functools
import warnings

from typing import Callable, Optional


def deprecated(
    func: Optional[Callable] = None,
    message: Optional[str] = None,
    replacement: Optional[str] = None,
):
    def decorator(f: Callable):
        @functools.wraps(f)
        def new_func(*args, **kwargs):
            text = f"Call to deprecated function '{f.__name__}'."
            if message:
                text += f" {message}"
            if replacement:
                text += f"Call `{replacement}` instead."
            warnings.simplefilter("always", DeprecationWarning)
            warnings.warn(
                text,
                category=DeprecationWarning,
                stacklevel=2,
            )
            warnings.simplefilter("default", DeprecationWarning)
            return f(*args, **kwargs)

        return new_func

    # case: @deprecated used directly
    if callable(func):
        return decorator(func)

    # case: @deprecated(...) used with arguments
    return decorator


def same_doc_as(source):
    def wrapper(target):
        target.__doc__ = source.__doc__
        return target

    return wrapper
