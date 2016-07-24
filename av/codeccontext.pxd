from libc.stdint cimport int64_t

cimport libav as lib

from av.codec cimport Codec
from av.frame cimport Frame
from av.packet cimport Packet


cdef class CodecContext(object):

    cdef lib.AVCodecContext *ptr
    cdef readonly Codec codec

    # Private API.
    #cdef _init(self, lib.AVCodecContext*)
    #cdef _setup_frame(self, Frame)
    #cdef _decode_one(self, lib.AVPacket*, int *data_consumed)

    # Public API.
    #cpdef encode(self, Frame frame)
    #cpdef decode(self, Packet packet, int count=?)


cdef CodecContext wrap_codec_context(lib.AVCodecContext*)