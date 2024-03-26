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

Example: '{"carousel": [{"alt": "oMd8kcY6gQ9rHIAa", "previewUrl": "oOhVT1umwTxD5j4f", "thumbnailUrl": "oNRn4dX7jsZmVgiK", "type": "image", "url": "uo7JsEDah1a5q8w7", "videoSource": "youtube"}, {"alt": "Num7MvhnpWcqTVKt", "previewUrl": "dbKrv1mhSP8hwMKY", "thumbnailUrl": "sE9dZPGzyYiFrzOo", "type": "image", "url": "AlDz7sIbFbYCISsL", "videoSource": "vimeo"}, {"alt": "HQCenUTbwtgOeRhC", "previewUrl": "rlBcS4ROyGjudXzb", "thumbnailUrl": "EA2XS8TiRurvEcGa", "type": "image", "url": "fK3uxVbYn4iUfQtB", "videoSource": "vimeo"}], "developer": "J4JuBGduJbQvzeBq", "forumUrl": "tmeC25wYUHQEFWXe", "genres": ["Casual", "Racing", "Strategy"], "localizations": {"Jpu07x4hEUZbvOF7": {"announcement": "jAjKI0U59GuxCoe5", "slogan": "IcOJYCBQt6uOhGVW"}, "UW5dWRPG7wQTUFjr": {"announcement": "IiJHCGYVJfsjhU2j", "slogan": "ONKYIMqJLbOivNlQ"}, "I3Mdl6DxpE3MQ5wl": {"announcement": "VVcuehD67HsHLPZM", "slogan": "pR7AoMUQrxo6F9DC"}}, "platformRequirements": {"kZhULS5DBINLCcNG": [{"additionals": "ZKg0YpszBHoSyn8k", "directXVersion": "u8iQqDzStSwcX2sn", "diskSpace": "3OZIONBLmEGrw4Ps", "graphics": "HLIzFNvKWmYn0zPF", "label": "9VntgRWFrKNI6JGb", "osVersion": "ccldsgERuOqPAIkz", "processor": "XVetySOehs8oyqG9", "ram": "PBuJx5pKdX0BvNK0", "soundCard": "sAvsHw1lNaVZKhPw"}, {"additionals": "4g3IYXLvzlVesw2m", "directXVersion": "jvzCEwD1ivOOPOXf", "diskSpace": "y7Dii7pCKKc5RlGn", "graphics": "JPyIlxgJmGPTby3s", "label": "JUr5H0StW2OYqr8z", "osVersion": "1WzqtAIUXcyUxHur", "processor": "KkghH7dk9tH0VDTF", "ram": "2kWGVH9BZoDDtAVj", "soundCard": "qwUUIlUalluJjU7G"}, {"additionals": "GX51UJU0SfZkv9G0", "directXVersion": "1ZuC4OjxjjL6XDDB", "diskSpace": "HlKqYqUpgx4nU95w", "graphics": "3WdQANPuLNgLp5Rb", "label": "qQfPvvI9IjPdnQxy", "osVersion": "rt5Ug8hjs8BZSc3b", "processor": "Cbr3DFCKYuc9ZIau", "ram": "mSXYnsfs5oAiIpZh", "soundCard": "qkrf9FR1O9bp5xLA"}], "pWRSZ3HVdhEH62am": [{"additionals": "iSMKMm8wVtDl9NBM", "directXVersion": "pYTfG4qgrNYwLorV", "diskSpace": "TaNRptP1kWS0bsPj", "graphics": "P2dgp22M0Yp0C5oh", "label": "VxDYgTtmUKc7p7tL", "osVersion": "7tHtzHgUgf7YGIdi", "processor": "wpfPhIRSjOsss6VQ", "ram": "U5W1Tat7oTrFME1r", "soundCard": "3A06a6uZFZdYjoNZ"}, {"additionals": "lJScGByhJ39mLqXW", "directXVersion": "kEwoFh4yYIxR5Dlg", "diskSpace": "KnOp0hRfwZ8TbjYj", "graphics": "mmZEWY1ktBHICkmu", "label": "eV8SMgTU2Prz7ehy", "osVersion": "fflL3AviBCkzY0lj", "processor": "yI8Ks9q5sD8w6Iml", "ram": "QCYlEEl9NuUgApjI", "soundCard": "YMKZ2ej40bBP3y86"}, {"additionals": "sVlXWySmfPaGka5d", "directXVersion": "2yR3X6pJeurB00HH", "diskSpace": "Z3gY8MMuwL93iicy", "graphics": "jluuFKOoM7ktPMs4", "label": "d5LFhpp3LRMY4OIy", "osVersion": "w9dCs0VI30E6tJ6H", "processor": "kRhsGstFHy7sNnD9", "ram": "87vCppfQNmNpNXR9", "soundCard": "RND45wHvnOGOy65p"}], "VHNGRw4RCKTwfzvI": [{"additionals": "ST59CkNzazFgEPW3", "directXVersion": "24dE5VzLdUMHfSHU", "diskSpace": "kOckmgilLAKAgXQi", "graphics": "5oPn1wquPyaQ7E0u", "label": "box6EoN4s2ivaZoA", "osVersion": "ILFKipqYPzLeS5uw", "processor": "84Q0LESTQKIGz4Nf", "ram": "HE8FLxf8kVqwtjih", "soundCard": "DOyD5MeAU8ZvLVWZ"}, {"additionals": "YUkCR0EwhJBQm0Ph", "directXVersion": "Pi21lMc9RXEWqRne", "diskSpace": "FJ9X5KwxuoCrMJoT", "graphics": "xT3sI50RtYM04hb6", "label": "vUZWymYzJfTL7wyt", "osVersion": "zL4j1ihadFh0QZ41", "processor": "Ivnp8mG1aANVJsjf", "ram": "eAaFcXN55ifsDsTK", "soundCard": "ibb7rTu8nUb85pYH"}, {"additionals": "zLgSV0CwCI6un4QG", "directXVersion": "ZN6cpCXoCJGKvRGI", "diskSpace": "8Zq6a4JMjMnWgsOe", "graphics": "PmbqatWu4vHWTNrS", "label": "aO99UjUuH61GX24u", "osVersion": "mXR0xDPOa5JFqPCg", "processor": "82UBcmeLXWPpppLa", "ram": "wJ7QGeDZb3CmOgBj", "soundCard": "X9HiTL8rsRqWjabK"}]}, "platforms": ["Android", "Android", "Windows"], "players": ["Multi", "CrossPlatformMulti", "Single"], "primaryGenre": "Action", "publisher": "A7M40wQqdS6GOrCn", "releaseDate": "1985-11-03T00:00:00Z", "websiteUrl": "KC4QVlVFaDRaZEuZ"}'
"""

result, error = update_app(
    item_id=item_id,
    store_id=store_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
