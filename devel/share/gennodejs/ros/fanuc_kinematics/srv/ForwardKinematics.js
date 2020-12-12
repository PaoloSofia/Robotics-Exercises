// Auto-generated. Do not edit!

// (in-package fanuc_kinematics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ForwardKinematicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_name = null;
    }
    else {
      if (initObj.hasOwnProperty('link_name')) {
        this.link_name = initObj.link_name
      }
      else {
        this.link_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForwardKinematicsRequest
    // Serialize message field [link_name]
    bufferOffset = _serializer.string(obj.link_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForwardKinematicsRequest
    let len;
    let data = new ForwardKinematicsRequest(null);
    // Deserialize message field [link_name]
    data.link_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.link_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fanuc_kinematics/ForwardKinematicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d82d60381f1b66a30f2157f60884345';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string link_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForwardKinematicsRequest(null);
    if (msg.link_name !== undefined) {
      resolved.link_name = msg.link_name;
    }
    else {
      resolved.link_name = ''
    }

    return resolved;
    }
};

class ForwardKinematicsResponse {
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
        this.translation = [];
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
    // Serializes a message object of type ForwardKinematicsResponse
    // Serialize message field [translation]
    bufferOffset = _arraySerializer.float32(obj.translation, buffer, bufferOffset, null);
    // Serialize message field [rotation]
    bufferOffset = _arraySerializer.float32(obj.rotation, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForwardKinematicsResponse
    let len;
    let data = new ForwardKinematicsResponse(null);
    // Deserialize message field [translation]
    data.translation = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rotation]
    data.rotation = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.translation.length;
    length += 4 * object.rotation.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fanuc_kinematics/ForwardKinematicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5b80608aa0b7f5b05ca5427bd9f1fd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] translation
    float32[] rotation
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForwardKinematicsResponse(null);
    if (msg.translation !== undefined) {
      resolved.translation = msg.translation;
    }
    else {
      resolved.translation = []
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

module.exports = {
  Request: ForwardKinematicsRequest,
  Response: ForwardKinematicsResponse,
  md5sum() { return '7878278dc9e10f5c8ed44003c357b811'; },
  datatype() { return 'fanuc_kinematics/ForwardKinematics'; }
};
