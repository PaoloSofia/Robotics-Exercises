// Auto-generated. Do not edit!

// (in-package fanuc_moveit.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AxisAngle = require('./AxisAngle.js');
let TransformationMatrix = require('./TransformationMatrix.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Transformations {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parent_frame = null;
      this.child_frame = null;
      this.translation = null;
      this.rpy = null;
      this.axis_angle = null;
      this.tf_matrix = null;
    }
    else {
      if (initObj.hasOwnProperty('parent_frame')) {
        this.parent_frame = initObj.parent_frame
      }
      else {
        this.parent_frame = '';
      }
      if (initObj.hasOwnProperty('child_frame')) {
        this.child_frame = initObj.child_frame
      }
      else {
        this.child_frame = '';
      }
      if (initObj.hasOwnProperty('translation')) {
        this.translation = initObj.translation
      }
      else {
        this.translation = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('axis_angle')) {
        this.axis_angle = initObj.axis_angle
      }
      else {
        this.axis_angle = new AxisAngle();
      }
      if (initObj.hasOwnProperty('tf_matrix')) {
        this.tf_matrix = initObj.tf_matrix
      }
      else {
        this.tf_matrix = new TransformationMatrix();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Transformations
    // Serialize message field [parent_frame]
    bufferOffset = _serializer.string(obj.parent_frame, buffer, bufferOffset);
    // Serialize message field [child_frame]
    bufferOffset = _serializer.string(obj.child_frame, buffer, bufferOffset);
    // Serialize message field [translation]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.translation, buffer, bufferOffset);
    // Serialize message field [rpy]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpy, buffer, bufferOffset);
    // Serialize message field [axis_angle]
    bufferOffset = AxisAngle.serialize(obj.axis_angle, buffer, bufferOffset);
    // Serialize message field [tf_matrix]
    bufferOffset = TransformationMatrix.serialize(obj.tf_matrix, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Transformations
    let len;
    let data = new Transformations(null);
    // Deserialize message field [parent_frame]
    data.parent_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [child_frame]
    data.child_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [translation]
    data.translation = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpy]
    data.rpy = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [axis_angle]
    data.axis_angle = AxisAngle.deserialize(buffer, bufferOffset);
    // Deserialize message field [tf_matrix]
    data.tf_matrix = TransformationMatrix.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.parent_frame);
    length += _getByteLength(object.child_frame);
    length += TransformationMatrix.getMessageSize(object.tf_matrix);
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fanuc_moveit/Transformations';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbbf0fb7520bc61fcd2744d84e1d226c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Transformations(null);
    if (msg.parent_frame !== undefined) {
      resolved.parent_frame = msg.parent_frame;
    }
    else {
      resolved.parent_frame = ''
    }

    if (msg.child_frame !== undefined) {
      resolved.child_frame = msg.child_frame;
    }
    else {
      resolved.child_frame = ''
    }

    if (msg.translation !== undefined) {
      resolved.translation = geometry_msgs.msg.Vector3.Resolve(msg.translation)
    }
    else {
      resolved.translation = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = geometry_msgs.msg.Vector3.Resolve(msg.rpy)
    }
    else {
      resolved.rpy = new geometry_msgs.msg.Vector3()
    }

    if (msg.axis_angle !== undefined) {
      resolved.axis_angle = AxisAngle.Resolve(msg.axis_angle)
    }
    else {
      resolved.axis_angle = new AxisAngle()
    }

    if (msg.tf_matrix !== undefined) {
      resolved.tf_matrix = TransformationMatrix.Resolve(msg.tf_matrix)
    }
    else {
      resolved.tf_matrix = new TransformationMatrix()
    }

    return resolved;
    }
};

module.exports = Transformations;
