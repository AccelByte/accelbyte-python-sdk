import math
import struct

from bitarray import bitarray
from mmh3 import hash64  # pylint: disable=no-name-in-module

from typing import Tuple


class BloomFilter:
    """
    Bloom Filter implementation lifted from
        github.com/AccelByte/iam-python-sdk and
        github.com/AccelByte/bloom.
    ...
    Attributes
    ----------
    bits : bitarray
        bits
    k : int
        number of hash functions
    m : int
        total bits
    """

    BITARRAY_ENDIAN: str = "little"
    UINT64_FMT_CHAR: str = "Q"

    def __init__(self) -> None:
        self.bits: bitarray = bitarray(endian=self.BITARRAY_ENDIAN)
        self.k: int = 0
        self.m: int = 0

    def might_contains(self, key: str) -> bool:
        indices = self.get_indices(key=key, k=self.k, m=self.m)

        for i in indices:
            if not self.bits[i]:
                return False

        return True

    def put(self, key: str):
        indices = self.get_indices(key=key, k=self.k, m=self.m)
        for i in indices:
            self.bits[i] = True

    @classmethod
    def create_from_expected_n(cls, n: int, p: float = 1.0e-5):
        k, m = cls.estimate_params(n=n, p=p)

        result = cls()
        result.bits = bitarray(m)
        result.k = k
        result.m = m

        return result

    @classmethod
    def create_from_bits(cls, bits: list, k: int, m: int):
        bitfmt = cls.UINT64_FMT_CHAR * len(bits)
        bitset = struct.pack(bitfmt, *bits)

        result = cls()
        result.bits.frombytes(bitset)
        result.k = k
        result.m = m

        return result

    @staticmethod
    def estimate_params(n: int, p: float) -> Tuple[int, int]:
        """Estimate requirements for k and m.

        :param n: expected insertions
        :param p: expected false positive probability (fpp)
        :return: number of hash functions (k), total bits (m)
        """
        m_nume = -1 * n * math.log(p)
        m_deno = math.log(2) ** 2
        m_real = m_nume / m_deno
        m = int(math.ceil(m_real))

        k_real = (m_real / n) * math.log(2)
        k = int(math.ceil(k_real))

        return k, m

    @staticmethod
    def get_indices(key: str, k: int, m: int) -> list:
        h1, h2 = hash64(key=key, signed=False)  # Hash the data with mmh3 algorithm.
        combined = h1 & 0xFFFFFFFFFFFFFFFF  # Convert to uint64.

        indices = []
        for i in range(k):
            obj = (combined & 0x7FFFFFFFFFFFFFFF) % m
            indices.insert(i, obj)
            combined += h2

        return indices
