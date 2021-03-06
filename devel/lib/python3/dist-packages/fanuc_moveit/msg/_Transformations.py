# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from fanuc_moveit/Transformations.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import fanuc_moveit.msg
import geometry_msgs.msg

class Transformations(genpy.Message):
  _md5sum = "bbbf0fb7520bc61fcd2744d84e1d226c"
  _type = "fanuc_moveit/Transformations"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#This represent three different representation of a trasform, 
#RPY, axis-angle and homogeneus trasformation matrix
string parent_frame
string child_frame
geometry_msgs/Vector3 translation
geometry_msgs/Vector3 rpy
AxisAngle axis_angle
TransformationMatrix tf_matrix
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: fanuc_moveit/AxisAngle
#This represent a transformation as axis-angle representation

geometry_msgs/Vector3 axis
float32 angle

================================================================================
MSG: fanuc_moveit/TransformationMatrix
# This represent the 4x4 trasformation matrix, see MultiArrayLayout
#message definition for documentation on all multiarrays.

geometry_msgs/Vector3 translation
float32[] rotation"""
  __slots__ = ['parent_frame','child_frame','translation','rpy','axis_angle','tf_matrix']
  _slot_types = ['string','string','geometry_msgs/Vector3','geometry_msgs/Vector3','fanuc_moveit/AxisAngle','fanuc_moveit/TransformationMatrix']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       parent_frame,child_frame,translation,rpy,axis_angle,tf_matrix

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Transformations, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.parent_frame is None:
        self.parent_frame = ''
      if self.child_frame is None:
        self.child_frame = ''
      if self.translation is None:
        self.translation = geometry_msgs.msg.Vector3()
      if self.rpy is None:
        self.rpy = geometry_msgs.msg.Vector3()
      if self.axis_angle is None:
        self.axis_angle = fanuc_moveit.msg.AxisAngle()
      if self.tf_matrix is None:
        self.tf_matrix = fanuc_moveit.msg.TransformationMatrix()
    else:
      self.parent_frame = ''
      self.child_frame = ''
      self.translation = geometry_msgs.msg.Vector3()
      self.rpy = geometry_msgs.msg.Vector3()
      self.axis_angle = fanuc_moveit.msg.AxisAngle()
      self.tf_matrix = fanuc_moveit.msg.TransformationMatrix()

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
      _x = self.parent_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.child_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_9df3d().pack(_x.translation.x, _x.translation.y, _x.translation.z, _x.rpy.x, _x.rpy.y, _x.rpy.z, _x.axis_angle.axis.x, _x.axis_angle.axis.y, _x.axis_angle.axis.z, _x.axis_angle.angle, _x.tf_matrix.translation.x, _x.tf_matrix.translation.y, _x.tf_matrix.translation.z))
      length = len(self.tf_matrix.rotation)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.tf_matrix.rotation))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.translation is None:
        self.translation = geometry_msgs.msg.Vector3()
      if self.rpy is None:
        self.rpy = geometry_msgs.msg.Vector3()
      if self.axis_angle is None:
        self.axis_angle = fanuc_moveit.msg.AxisAngle()
      if self.tf_matrix is None:
        self.tf_matrix = fanuc_moveit.msg.TransformationMatrix()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.parent_frame = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.parent_frame = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.child_frame = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.child_frame = str[start:end]
      _x = self
      start = end
      end += 100
      (_x.translation.x, _x.translation.y, _x.translation.z, _x.rpy.x, _x.rpy.y, _x.rpy.z, _x.axis_angle.axis.x, _x.axis_angle.axis.y, _x.axis_angle.axis.z, _x.axis_angle.angle, _x.tf_matrix.translation.x, _x.tf_matrix.translation.y, _x.tf_matrix.translation.z,) = _get_struct_9df3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.tf_matrix.rotation = s.unpack(str[start:end])
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
      _x = self.parent_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.child_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_9df3d().pack(_x.translation.x, _x.translation.y, _x.translation.z, _x.rpy.x, _x.rpy.y, _x.rpy.z, _x.axis_angle.axis.x, _x.axis_angle.axis.y, _x.axis_angle.axis.z, _x.axis_angle.angle, _x.tf_matrix.translation.x, _x.tf_matrix.translation.y, _x.tf_matrix.translation.z))
      length = len(self.tf_matrix.rotation)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.tf_matrix.rotation.tostring())
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
      if self.translation is None:
        self.translation = geometry_msgs.msg.Vector3()
      if self.rpy is None:
        self.rpy = geometry_msgs.msg.Vector3()
      if self.axis_angle is None:
        self.axis_angle = fanuc_moveit.msg.AxisAngle()
      if self.tf_matrix is None:
        self.tf_matrix = fanuc_moveit.msg.TransformationMatrix()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.parent_frame = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.parent_frame = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.child_frame = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.child_frame = str[start:end]
      _x = self
      start = end
      end += 100
      (_x.translation.x, _x.translation.y, _x.translation.z, _x.rpy.x, _x.rpy.y, _x.rpy.z, _x.axis_angle.axis.x, _x.axis_angle.axis.y, _x.axis_angle.axis.z, _x.axis_angle.angle, _x.tf_matrix.translation.x, _x.tf_matrix.translation.y, _x.tf_matrix.translation.z,) = _get_struct_9df3d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.tf_matrix.rotation = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_9df3d = None
def _get_struct_9df3d():
    global _struct_9df3d
    if _struct_9df3d is None:
        _struct_9df3d = struct.Struct("<9df3d")
    return _struct_9df3d
