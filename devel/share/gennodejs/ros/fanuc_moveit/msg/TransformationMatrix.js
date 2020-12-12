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

class TransformationMatrix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.translation = null;
      this.rotation = null;
    }
    else {
      if (initObj.hasOwnProperty('translation')) {
        this.translation = initObj.translation
      }
      else {
        this.translation = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransformationMatrix
    // Serialize message field [translation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.translation, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = _arraySerializer.float32(obj.rotation, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransformationMatrix
    let len;
    let data = new TransformationMatrix(null);
    // Deserialize message field [translation]
    data.translation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.rotation.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fanuc_moveit/TransformationMatrix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fbb3991bb5188e46c0240cb0698b70c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represent the 4x4 trasformation matrix, see MultiArrayLayout
    #message definition for documentation on all multiarrays.
    
    geometry_msgs/Vector3 translation
    float32[] rotation
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
    const resolved = new TransformationMatrix(null);
    if (msg.translation !== undefined) {
      resolved.translation = geometry_msgs.msg.Vector3.Resolve(msg.translation)
    }
    else {
      resolved.translation = new geometry_msgs.msg.Vector3()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = msg.rotation;
    }
    else {
      resolved.rotation = []
    }

    return resolved;
    }
};

module.exports = TransformationMatrix;
