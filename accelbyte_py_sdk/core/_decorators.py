def same_doc_as(source):
    def wrapper(target):
        target.__doc__ = source.__doc__
        return target
    return wrapper
