// Auto-generated. Do not edit!

// (in-package fanuc_moveit.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Transformations = require('./Transformations.js');

//-----------------------------------------------------------

class TransformationsArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transformations = null;
    }
    else {
      if (initObj.hasOwnProperty('transformations')) {
        this.transformations = initObj.transformations
      }
      else {
        this.transformations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransformationsArray
    // Serialize message field [transformations]
    // Serialize the length for message field [transformations]
    bufferOffset = _serializer.uint32(obj.transformations.length, buffer, bufferOffset);
    obj.transformations.forEach((val) => {
      bufferOffset = Transformations.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransformationsArray
    let len;
    let data = new TransformationsArray(null);
    // Deserialize message field [transformations]
    // Deserialize array length for message field [transformations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.transformations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.transformations[i] = Transformations.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.transformations.forEach((val) => {
      length += Transformations.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fanuc_moveit/TransformationsArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '600ffd76db98e0bc75fa65c75bc66361';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #This represent an array of transformations
    
    Transformations[] transformations
    ================================================================================
    MSG: fanuc_moveit/Transformations
    #This represent three different representation of a trasform, 
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
    float32[] rotation
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransformationsArray(null);
    if (msg.transformations !== undefined) {
      resolved.transformations = new Array(msg.transformations.length);
      for (let i = 0; i < resolved.transformations.length; ++i) {
        resolved.transformations[i] = Transformations.Resolve(msg.transformations[i]);
      }
    }
    else {
      resolved.transformations = []
    }

    return resolved;
    }
};

module.exports = TransformationsArray;
