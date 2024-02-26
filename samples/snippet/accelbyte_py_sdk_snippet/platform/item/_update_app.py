import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_app
from accelbyte_py_sdk.api.platform.models import AppUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullAppInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: AppUpdate
carousel: List[Slide]
Definition: List[Slide]
    alt: str
    preview_url: str
    thumbnail_url: str
    type_: str
    url: str
    video_source: str
developer: str
forum_url: str
genres: List[str]
localizations: Dict[str, AppLocalization]
platform_requirements: Dict[str, List[Requirement]]
platforms: List[str]
players: List[str]
primary_genre: str
publisher: str
release_date: str
website_url: str

Example: '{"carousel": [{"alt": "QiSTbifM3yhWbsLh", "previewUrl": "7MtlNbyPC9Ubb5hz", "thumbnailUrl": "Tgm9eJPhhlBgXrln", "type": "image", "url": "uKEuKzFma8ErRyAS", "videoSource": "generic"}, {"alt": "y9oIepnRhVufCVII", "previewUrl": "pxcjBZIkvWVcbsOh", "thumbnailUrl": "9dmGYOaEAYS2mXIS", "type": "video", "url": "tNbKzep0m4rXVqEv", "videoSource": "generic"}, {"alt": "Ok83TSQjjxlt33pm", "previewUrl": "P9PEm1yoCwqpDGjs", "thumbnailUrl": "uLd2vLyPLcFRR5D4", "type": "video", "url": "nPeXqezntd6zGPtG", "videoSource": "youtube"}], "developer": "LHwvxp9YhwO0o1ms", "forumUrl": "ZY2T9iIrYJlaQLMV", "genres": ["MassivelyMultiplayer", "Action", "Indie"], "localizations": {"CSjrgyCUeT11MVE7": {"announcement": "C0scs5cBMPg9nXtb", "slogan": "cxuLiGCLu3GOj0CN"}, "fwPpGjuDkZzHCauu": {"announcement": "xsVerSgFz21W7AP7", "slogan": "qcxOaSiTtmrgYYpB"}, "3f8SH8MbTEdRchyC": {"announcement": "nQ4zH75HCHacgeAv", "slogan": "DjeDuQCDrt95V6cV"}}, "platformRequirements": {"AXMC1ZQ1NuXA93ks": [{"additionals": "5ewfZF2jVsW4l4lE", "directXVersion": "FYJvpuah43qCXDG2", "diskSpace": "qn0UvfsHy1irl3el", "graphics": "NCudeR9b3A8j9mu3", "label": "r426SY1Cdu29WJhB", "osVersion": "3zuzVRZYMcmzyugE", "processor": "gPyXczpTvbib2mBd", "ram": "xYAciPQKpjtfuLeH", "soundCard": "0oUc7MEMr33KHGFo"}, {"additionals": "JUYBLqZEWBFX7uBp", "directXVersion": "sZ62X0pZbBUKgU38", "diskSpace": "MieZ0xqu1CEFhkNQ", "graphics": "QwgMFJb9EzQ1cj6P", "label": "YnsQnDC4AC6I1wAu", "osVersion": "JmP199e8ltSJep35", "processor": "SDvmyggV9QqTKhpT", "ram": "txmhsuQolWg7f4ym", "soundCard": "qGV6IAn8NM4dWfjd"}, {"additionals": "64CKQ0cIyf5TOiZT", "directXVersion": "3r55fqIH6DOLcjTU", "diskSpace": "REniBGdYBs5MjtCD", "graphics": "xD8QuFkBTeOnsYVA", "label": "ghGR34MBo73URYha", "osVersion": "f9bcq6YFeORQsG0g", "processor": "qLwNaMKLUthpLLnr", "ram": "hd2N99j0WEzdOrAA", "soundCard": "ma8YFHyZ1s96HvYI"}], "2TInr36ao6QayVXO": [{"additionals": "UaUW9fWtiF4ZBdM7", "directXVersion": "a5gMOWbhbJO2KA9b", "diskSpace": "0rAaea4al204Mrxj", "graphics": "3Y6is5yPANuJ4ux4", "label": "1V0LT5wYYqbDm8A6", "osVersion": "bdTfYAMgbNcf0F09", "processor": "CFgk01J5pfsuE3Qr", "ram": "QDAFdXftg4yEkRqN", "soundCard": "aQJwNPujBHch7j2Q"}, {"additionals": "DI9ROij1z4SUSLNM", "directXVersion": "UVlam5oBrYAiJLb6", "diskSpace": "Fc092YZ0s8Nc4kkr", "graphics": "us5DG32F3ywFc6uF", "label": "cTZcZbY6F039LORT", "osVersion": "psjMkFlbmbOoqPJn", "processor": "SwWvsLd76v7jSxuy", "ram": "GtWINfzxOvmW2chH", "soundCard": "Qsdgyfo4rcwUWvoB"}, {"additionals": "JergjtwQzgGCRUlt", "directXVersion": "DWXXAGn9Xqf8AqzH", "diskSpace": "JBDzFOtTeuIHYM4f", "graphics": "WpSQB1hvVufVJzku", "label": "nWrSv02vLP1uzELo", "osVersion": "oD1xEGawRgXUM2ji", "processor": "JczYwuxNUc9iQRgW", "ram": "qM72CoYWA1F2RJYZ", "soundCard": "CxZBE8gdZs25MLtt"}], "2n2ETXRkdeoD0obV": [{"additionals": "97vaXBH5IrYA8bzn", "directXVersion": "MTvIj1cARgKXCGnW", "diskSpace": "CO5JLwuCb3ZCNUr0", "graphics": "mpIkv4IWB3EKTyNc", "label": "YJxbL5XEmbJYsp7I", "osVersion": "1QR0INa4SZl2VuEX", "processor": "JmzUA28njjD3JFaS", "ram": "wnppdxJ2fKrFzWRF", "soundCard": "PLGQ0zUHJMIu9xne"}, {"additionals": "TdbJNgw3k5fycQm0", "directXVersion": "KqXLoQOQVScSPk5V", "diskSpace": "DUT3G8FFhm7dkUYC", "graphics": "gGoDnFjVT8HzWVGw", "label": "7yKL7WtEKmKoiGpD", "osVersion": "oYAzBOSQWOqWHBX9", "processor": "SR7pbtTDN3S7T7x6", "ram": "aU6XlSPweFjvd5gl", "soundCard": "dmK8hmR5BYZd4l0O"}, {"additionals": "BHqV3ZOnVOA1WTku", "directXVersion": "m1D0qxPf6vH2avYN", "diskSpace": "ILc5ueetAuXTgBX4", "graphics": "B5l8jdLlu8NUnLGV", "label": "x8xNQKFtrgDsWA88", "osVersion": "nFR4TIvRja29QiSD", "processor": "12YHCCfjfJpsmCyL", "ram": "QL7ck6UoQbdfzOPA", "soundCard": "9AinJVjP5e8ga20s"}]}, "platforms": ["IOS", "MacOS", "Linux"], "players": ["LocalCoop", "LocalCoop", "Single"], "primaryGenre": "Action", "publisher": "ynUBSLj84g8QkTnj", "releaseDate": "1999-09-19T00:00:00Z", "websiteUrl": "7wY4Eoyfe1SpMM4p"}'
"""

result, error = update_app(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
