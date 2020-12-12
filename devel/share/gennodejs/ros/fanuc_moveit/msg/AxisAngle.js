// Auto-generated. Do not edit!

// (in-package fanuc_moveit.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class AxisAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.axis = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('axis')) {
        this.axis = initObj.axis
      }
      else {
        this.axis = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AxisAngle
    // Serialize message field [axis]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.axis, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AxisAngle
    let len;
    let data = new AxisAngle(null);
    // Deserialize message field [axis]
    data.axis = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fanuc_moveit/AxisAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ccd1f1765b334728af430dd2d7e79aec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #This represent a transformation as axis-angle representation
    
    geometry_msgs/Vector3 axis
    float32 angle
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AxisAngle(null);
    if (msg.axis !== undefined) {
      resolved.axis = geometry_msgs.msg.Vector3.Resolve(msg.axis)
    }
    else {
      resolved.axis = new geometry_msgs.msg.Vector3()
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    return resolved;
    }
};

module.exports = AxisAngle;
