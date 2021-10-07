import functools
import warnings


def deprecated(func):
    @functools.wraps(func)
    def new_func(*args, **kwargs):
        warnings.simplefilter("always", DeprecationWarning)
        warnings.warn(f"Call to deprecated function '{func.__name__}'.",
                      category=DeprecationWarning,
                      stacklevel=2)
        warnings.simplefilter("default", DeprecationWarning)
        return func(*args, **kwargs)
    return new_func


def same_doc_as(source):
    def wrapper(target):
        target.__doc__ = source.__doc__
        return target
    return wrapper
