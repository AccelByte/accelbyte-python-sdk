import calendar
import datetime
import random
import string
import urllib.parse

from typing import Any, List, Optional, Tuple, Union

ADJECTIVE_ED = [
    "Abandoned",
    "Abdicated",
    "Aged",
    "Bamboozled",
    "Bemused",
    "Broken",
    "Caged",
    "Charged",
    "Confined",
    "Defamed",
    "Defeated",
    "Distorted",
    "Edited",
    "Enhanced",
    "Enraged",
]

ADJECTIVE_IC = [
    "Archaic",
    "Athletic",
    "Authentic",
    "Ballistic",
    "Basic",
    "Bionic",
    "Caloric",
    "Climatic",
    "Cubic",
    "Democratic",
    "Demonic",
    "Draconic",
    "Eccentric",
    "Elastic",
    "Energetic",
]

ADJECTIVE_OUS = [
    "Ambidextrous",
    "Amphibious",
    "Autonomous",
    "Blasphemous",
    "Boisterous",
    "Bumptious",
    "Carnivorous",
    "Clamorous",
    "Copious",
    "Dangerous",
    "Devious",
    "Dexterous",
    "Egregious",
    "Envious",
    "Euphonious",
]

CREATURE_ANIMAL = [
    "Aardvark",
    "Antelope",
    "Axolotl",
    "Baboon",
    "Badger",
    "Beetle",
    "Camel",
    "Carp",
    "Chipmunk",
    "Deer",
    "Dingo",
    "Dodo",
    "Eagle",
    "Elephant",
    "Emu",
]

COUNTRY_2 = [
    "CA",
    "CN",
    "GB",
    "ID",
    "IE",
    "PH",
    "RU",
    "US",
]

FOOD_DESSERT = [
    "Apple Pie",
    "Apple Strudel",
    "Banana Bread",
    "Birthday Cake",
    "Blueberry Muffin" "Cheesecake",
    "Cherry Pie",
    "Cinnamon Rolls",
    "Dacquoise",
    "Doughnut",
    "Dundee Cake",
    "Fudge",
    "Funnel Cake",
    "Frozen Yogurt",
]

FOOD_FRUIT_VEGGIE = [
    "Apple",
    "Apricot",
    "Avocado",
    "Banana",
    "Blackberry",
    "Blueberry",
    "Cantaloupe",
    "Cherry",
    "Coconut",
    "Date",
    "Dill",
    "Durian",
    "Eggplant",
    "Elderberry",
    "Etrog",
]

NAME_FIRST = [
    "Adam",
    "Alice",
    "Bob",
    "Bonnie",
    "Clyde",
    "Claire",
    "Dan",
    "Diana",
    "Earl",
    "Eve",
]

NAME_LAST = [
    "Anderson",
    "Allen",
    "Adams",
    "Brown",
    "Baker",
    "Butler",
    "Clark",
    "Cook",
    "Cooper",
    "Davis",
    "Dunn",
    "Dixon",
    "Evans",
    "Edwards",
    "Elliott",
]

SPECIAL_CHARACTERS = " `~!@#$%^&*()-_=+[{]}|:;<,>.?"


def random_adjective(**kwargs) -> str:
    result = random.choice([*ADJECTIVE_ED, *ADJECTIVE_IC, *ADJECTIVE_OUS])
    return result


def random_adult_birthdate(
    fmt: str = "%Y-%m-%d", legal_age_range: Optional[Union[int, Tuple[int, int]]] = None
) -> str:
    if isinstance(legal_age_range, int):
        legal_age = legal_age_range
    else:
        legal_age_min, legal_age_max = legal_age_range if legal_age_range else (21, 50)
        legal_age = random.randint(legal_age_min, legal_age_max)
    delta = legal_age * 366
    delta_bonus = random.randint(0, 366)
    today = datetime.date.today()
    birthdate = today - datetime.timedelta(days=delta + delta_bonus)
    result = birthdate.strftime(fmt)
    return result


def random_country(**kwargs) -> str:
    result = random.choice(COUNTRY_2)
    return result


def random_creature(**kwargs) -> str:
    result = random.choice(CREATURE_ANIMAL)
    return result


def random_date(
    year: Optional[int] = None,
    month: Optional[int] = None,
    day: Optional[int] = None,
    fmt: str = "%Y-%m-%d",
) -> str:
    year = year or random.randint(1970, datetime.date.today().year)
    month = month or random.randint(1, 12)
    day = day or random.randint(1, calendar.monthrange(year, month)[1])
    date = datetime.date(year=year, month=month, day=day)
    result = date.strftime(fmt)
    return result


def random_email(
    username: Optional[str] = None,
    domain_name: Optional[str] = None,
    domain: Optional[str] = None,
) -> str:
    username = (
        username
        or (
            random_adjective()
            + random_thing()
            + "+"
            + random_string(6, [*string.hexdigits])
        ).upper()
    )
    username = username.replace(" ", "")
    domain_name = domain_name or "fakemail"
    domain = domain or "com"
    result = f"{username}@{domain_name}.{domain}"
    return result


def random_first_name(**kwargs) -> str:
    result = random.choice(NAME_FIRST)
    return result


def random_food(**kwargs) -> str:
    result = random.choice([*FOOD_DESSERT, *FOOD_FRUIT_VEGGIE])
    return result


def random_int(min_val: int = 0, max_val: int = 100) -> int:
    result = random.randint(min_val, max_val)
    return result


def random_last_name(**kwargs) -> str:
    result = random.choice(NAME_LAST)
    return result


def random_string(length, choice: List[str] = None) -> str:
    choice = choice if choice else [*string.ascii_letters]
    result = "".join(random.choice(choice) for _ in range(length))
    return result


def random_thing(**kwargs) -> str:
    result = random.choice([*CREATURE_ANIMAL, *FOOD_DESSERT, *FOOD_FRUIT_VEGGIE])
    return result


def random_password(length: int = 16) -> str:
    result = random_string(
        length, [*string.ascii_letters, *string.digits, *SPECIAL_CHARACTERS]
    )
    return result


def random_uid(**kwargs) -> str:
    result = random_string(32, [*string.hexdigits]).lower()
    return result


def random_url(file_ext: Optional[str] = None) -> str:
    file_ext = f".{file_ext.removeprefix('.')}" if file_ext else ""
    result = (
        f"https://www.example.com/{urllib.parse.quote(random_string(10))}{file_ext}"
    )
    return result


def random_username(**kwargs) -> str:
    result = (
        random_adjective()
        + random_adjective()
        + random_creature()
        + random_string(6, [*string.hexdigits]).upper()
    )
    result = result.replace(" ", "")
    return result


def random_version(
    major: Optional[int] = None,
    minor: Optional[int] = None,
    patch: Optional[int] = None,
    prefix: Optional[str] = None,
    suffix: Optional[str] = None,
) -> str:
    major = major or random.randint(0, 99)
    minor = minor or random.randint(0, 99)
    patch = patch or random.randint(0, 99)
    prefix = prefix or ""
    suffix = suffix or ""
    result = f"{prefix}{major}.{minor}.{patch}{suffix}"
    return result


def random_zip_code(length: int = 5) -> str:
    result = random_string(length, [*string.digits])
    return result


def randomize(type_: Optional[str] = None, **kwargs) -> Any:
    types = {
        "adjective": random_adjective,
        "adult_birthdate": random_adult_birthdate,
        "country": random_country,
        "date": random_date,
        "creature": random_creature,
        "email": random_email,
        "first_name": random_first_name,
        "food": random_food,
        "int": random_int,
        "last_name": random_last_name,
        "password": random_password,
        "slug": random_username,
        "thing": random_thing,
        "uid": random_uid,
        "url": random_url,
        "version": random_version,
        "zip_code": random_zip_code,
    }
    func = types.get(type_)
    if func is not None:
        return func(**kwargs)
    return random_string(length=12)
