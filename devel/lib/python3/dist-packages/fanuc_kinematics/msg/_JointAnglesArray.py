# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fanuc_kinematics/JointAnglesArray.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import fanuc_kinematics.msg

class JointAnglesArray(genpy.Message):
  _md5sum = "23f8d77e3668a9f9844ada86c754258b"
  _type = "fanuc_kinematics/JointAnglesArray"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Represent an array of a joint angles' set.
JointAngles[] array
================================================================================
MSG: fanuc_kinematics/JointAngles
# Represent a set of joint angles
float64[] joint_angles"""
  __slots__ = ['array']
  _slot_types = ['fanuc_kinematics/JointAngles[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       array

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(JointAnglesArray, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.array is None:
        self.array = []
    else:
      self.array = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.array)
      buff.write(_struct_I.pack(length))
      for val1 in self.array:
        length = len(val1.joint_angles)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.Struct(pattern).pack(*val1.joint_angles))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.array is None:
        self.array = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.array = []
      for i in range(0, length):
        val1 = fanuc_kinematics.msg.JointAngles()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.joint_angles = s.unpack(str[start:end])
        self.array.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.array)
      buff.write(_struct_I.pack(length))
      for val1 in self.array:
        length = len(val1.joint_angles)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.joint_angles.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.array is None:
        self.array = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.array = []
      for i in range(0, length):
        val1 = fanuc_kinematics.msg.JointAngles()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.joint_angles = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        self.array.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
