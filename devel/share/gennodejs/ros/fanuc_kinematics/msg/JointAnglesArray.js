// Auto-generated. Do not edit!

// (in-package fanuc_kinematics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointAngles = require('./JointAngles.js');

//-----------------------------------------------------------

class JointAnglesArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.array = null;
    }
    else {
      if (initObj.hasOwnProperty('array')) {
        this.array = initObj.array
      }
      else {
        this.array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointAnglesArray
    // Serialize message field [array]
    // Serialize the length for message field [array]
    bufferOffset = _serializer.uint32(obj.array.length, buffer, bufferOffset);
    obj.array.forEach((val) => {
      bufferOffset = JointAngles.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointAnglesArray
    let len;
    let data = new JointAnglesArray(null);
    // Deserialize message field [array]
    // Deserialize array length for message field [array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.array[i] = JointAngles.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.array.forEach((val) => {
      length += JointAngles.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fanuc_kinematics/JointAnglesArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23f8d77e3668a9f9844ada86c754258b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Represent an array of a joint angles' set.
    JointAngles[] array
    ================================================================================
    MSG: fanuc_kinematics/JointAngles
    # Represent a set of joint angles
    float64[] joint_angles
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointAnglesArray(null);
    if (msg.array !== undefined) {
      resolved.array = new Array(msg.array.length);
      for (let i = 0; i < resolved.array.length; ++i) {
        resolved.array[i] = JointAngles.Resolve(msg.array[i]);
      }
    }
    else {
      resolved.array = []
    }

    return resolved;
    }
};

module.exports = JointAnglesArray;
