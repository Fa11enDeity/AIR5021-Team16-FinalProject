// Auto-generated. Do not edit!

// (in-package spark_base.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SparkBaseSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ir_bumper_left = null;
      this.ir_bumper_right = null;
      this.ir_bumper_front_left = null;
      this.ir_bumper_front_right = null;
      this.ir_bumper_front = null;
      this.ir_bumper_back_left = null;
      this.ir_bumper_back_right = null;
      this.cliff_left = null;
      this.cliff_right = null;
      this.cliff_front_left = null;
      this.cliff_front_right = null;
      this.cliff_back_left = null;
      this.cliff_back_right = null;
      this.wheel_drop_left = null;
      this.wheel_drop_right = null;
      this.wheel_over_current_left = null;
      this.wheel_over_current_right = null;
    }
    else {
      if (initObj.hasOwnProperty('ir_bumper_left')) {
        this.ir_bumper_left = initObj.ir_bumper_left
      }
      else {
        this.ir_bumper_left = false;
      }
      if (initObj.hasOwnProperty('ir_bumper_right')) {
        this.ir_bumper_right = initObj.ir_bumper_right
      }
      else {
        this.ir_bumper_right = false;
      }
      if (initObj.hasOwnProperty('ir_bumper_front_left')) {
        this.ir_bumper_front_left = initObj.ir_bumper_front_left
      }
      else {
        this.ir_bumper_front_left = false;
      }
      if (initObj.hasOwnProperty('ir_bumper_front_right')) {
        this.ir_bumper_front_right = initObj.ir_bumper_front_right
      }
      else {
        this.ir_bumper_front_right = false;
      }
      if (initObj.hasOwnProperty('ir_bumper_front')) {
        this.ir_bumper_front = initObj.ir_bumper_front
      }
      else {
        this.ir_bumper_front = false;
      }
      if (initObj.hasOwnProperty('ir_bumper_back_left')) {
        this.ir_bumper_back_left = initObj.ir_bumper_back_left
      }
      else {
        this.ir_bumper_back_left = false;
      }
      if (initObj.hasOwnProperty('ir_bumper_back_right')) {
        this.ir_bumper_back_right = initObj.ir_bumper_back_right
      }
      else {
        this.ir_bumper_back_right = false;
      }
      if (initObj.hasOwnProperty('cliff_left')) {
        this.cliff_left = initObj.cliff_left
      }
      else {
        this.cliff_left = false;
      }
      if (initObj.hasOwnProperty('cliff_right')) {
        this.cliff_right = initObj.cliff_right
      }
      else {
        this.cliff_right = false;
      }
      if (initObj.hasOwnProperty('cliff_front_left')) {
        this.cliff_front_left = initObj.cliff_front_left
      }
      else {
        this.cliff_front_left = false;
      }
      if (initObj.hasOwnProperty('cliff_front_right')) {
        this.cliff_front_right = initObj.cliff_front_right
      }
      else {
        this.cliff_front_right = false;
      }
      if (initObj.hasOwnProperty('cliff_back_left')) {
        this.cliff_back_left = initObj.cliff_back_left
      }
      else {
        this.cliff_back_left = false;
      }
      if (initObj.hasOwnProperty('cliff_back_right')) {
        this.cliff_back_right = initObj.cliff_back_right
      }
      else {
        this.cliff_back_right = false;
      }
      if (initObj.hasOwnProperty('wheel_drop_left')) {
        this.wheel_drop_left = initObj.wheel_drop_left
      }
      else {
        this.wheel_drop_left = false;
      }
      if (initObj.hasOwnProperty('wheel_drop_right')) {
        this.wheel_drop_right = initObj.wheel_drop_right
      }
      else {
        this.wheel_drop_right = false;
      }
      if (initObj.hasOwnProperty('wheel_over_current_left')) {
        this.wheel_over_current_left = initObj.wheel_over_current_left
      }
      else {
        this.wheel_over_current_left = false;
      }
      if (initObj.hasOwnProperty('wheel_over_current_right')) {
        this.wheel_over_current_right = initObj.wheel_over_current_right
      }
      else {
        this.wheel_over_current_right = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SparkBaseSensor
    // Serialize message field [ir_bumper_left]
    bufferOffset = _serializer.bool(obj.ir_bumper_left, buffer, bufferOffset);
    // Serialize message field [ir_bumper_right]
    bufferOffset = _serializer.bool(obj.ir_bumper_right, buffer, bufferOffset);
    // Serialize message field [ir_bumper_front_left]
    bufferOffset = _serializer.bool(obj.ir_bumper_front_left, buffer, bufferOffset);
    // Serialize message field [ir_bumper_front_right]
    bufferOffset = _serializer.bool(obj.ir_bumper_front_right, buffer, bufferOffset);
    // Serialize message field [ir_bumper_front]
    bufferOffset = _serializer.bool(obj.ir_bumper_front, buffer, bufferOffset);
    // Serialize message field [ir_bumper_back_left]
    bufferOffset = _serializer.bool(obj.ir_bumper_back_left, buffer, bufferOffset);
    // Serialize message field [ir_bumper_back_right]
    bufferOffset = _serializer.bool(obj.ir_bumper_back_right, buffer, bufferOffset);
    // Serialize message field [cliff_left]
    bufferOffset = _serializer.bool(obj.cliff_left, buffer, bufferOffset);
    // Serialize message field [cliff_right]
    bufferOffset = _serializer.bool(obj.cliff_right, buffer, bufferOffset);
    // Serialize message field [cliff_front_left]
    bufferOffset = _serializer.bool(obj.cliff_front_left, buffer, bufferOffset);
    // Serialize message field [cliff_front_right]
    bufferOffset = _serializer.bool(obj.cliff_front_right, buffer, bufferOffset);
    // Serialize message field [cliff_back_left]
    bufferOffset = _serializer.bool(obj.cliff_back_left, buffer, bufferOffset);
    // Serialize message field [cliff_back_right]
    bufferOffset = _serializer.bool(obj.cliff_back_right, buffer, bufferOffset);
    // Serialize message field [wheel_drop_left]
    bufferOffset = _serializer.bool(obj.wheel_drop_left, buffer, bufferOffset);
    // Serialize message field [wheel_drop_right]
    bufferOffset = _serializer.bool(obj.wheel_drop_right, buffer, bufferOffset);
    // Serialize message field [wheel_over_current_left]
    bufferOffset = _serializer.bool(obj.wheel_over_current_left, buffer, bufferOffset);
    // Serialize message field [wheel_over_current_right]
    bufferOffset = _serializer.bool(obj.wheel_over_current_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SparkBaseSensor
    let len;
    let data = new SparkBaseSensor(null);
    // Deserialize message field [ir_bumper_left]
    data.ir_bumper_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ir_bumper_right]
    data.ir_bumper_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ir_bumper_front_left]
    data.ir_bumper_front_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ir_bumper_front_right]
    data.ir_bumper_front_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ir_bumper_front]
    data.ir_bumper_front = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ir_bumper_back_left]
    data.ir_bumper_back_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ir_bumper_back_right]
    data.ir_bumper_back_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_left]
    data.cliff_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_right]
    data.cliff_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_front_left]
    data.cliff_front_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_front_right]
    data.cliff_front_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_back_left]
    data.cliff_back_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cliff_back_right]
    data.cliff_back_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_drop_left]
    data.wheel_drop_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_drop_right]
    data.wheel_drop_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_over_current_left]
    data.wheel_over_current_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_over_current_right]
    data.wheel_over_current_right = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spark_base/SparkBaseSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa940530bef575d46667aefc9eff8eff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ir_bumper_left
    bool ir_bumper_right
    bool ir_bumper_front_left
    bool ir_bumper_front_right
    bool ir_bumper_front
    bool ir_bumper_back_left
    bool ir_bumper_back_right
    
    
    bool cliff_left
    bool cliff_right
    bool cliff_front_left
    bool cliff_front_right
    bool cliff_back_left
    bool cliff_back_right
    
    bool wheel_drop_left
    bool wheel_drop_right
    bool wheel_over_current_left
    bool wheel_over_current_right
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SparkBaseSensor(null);
    if (msg.ir_bumper_left !== undefined) {
      resolved.ir_bumper_left = msg.ir_bumper_left;
    }
    else {
      resolved.ir_bumper_left = false
    }

    if (msg.ir_bumper_right !== undefined) {
      resolved.ir_bumper_right = msg.ir_bumper_right;
    }
    else {
      resolved.ir_bumper_right = false
    }

    if (msg.ir_bumper_front_left !== undefined) {
      resolved.ir_bumper_front_left = msg.ir_bumper_front_left;
    }
    else {
      resolved.ir_bumper_front_left = false
    }

    if (msg.ir_bumper_front_right !== undefined) {
      resolved.ir_bumper_front_right = msg.ir_bumper_front_right;
    }
    else {
      resolved.ir_bumper_front_right = false
    }

    if (msg.ir_bumper_front !== undefined) {
      resolved.ir_bumper_front = msg.ir_bumper_front;
    }
    else {
      resolved.ir_bumper_front = false
    }

    if (msg.ir_bumper_back_left !== undefined) {
      resolved.ir_bumper_back_left = msg.ir_bumper_back_left;
    }
    else {
      resolved.ir_bumper_back_left = false
    }

    if (msg.ir_bumper_back_right !== undefined) {
      resolved.ir_bumper_back_right = msg.ir_bumper_back_right;
    }
    else {
      resolved.ir_bumper_back_right = false
    }

    if (msg.cliff_left !== undefined) {
      resolved.cliff_left = msg.cliff_left;
    }
    else {
      resolved.cliff_left = false
    }

    if (msg.cliff_right !== undefined) {
      resolved.cliff_right = msg.cliff_right;
    }
    else {
      resolved.cliff_right = false
    }

    if (msg.cliff_front_left !== undefined) {
      resolved.cliff_front_left = msg.cliff_front_left;
    }
    else {
      resolved.cliff_front_left = false
    }

    if (msg.cliff_front_right !== undefined) {
      resolved.cliff_front_right = msg.cliff_front_right;
    }
    else {
      resolved.cliff_front_right = false
    }

    if (msg.cliff_back_left !== undefined) {
      resolved.cliff_back_left = msg.cliff_back_left;
    }
    else {
      resolved.cliff_back_left = false
    }

    if (msg.cliff_back_right !== undefined) {
      resolved.cliff_back_right = msg.cliff_back_right;
    }
    else {
      resolved.cliff_back_right = false
    }

    if (msg.wheel_drop_left !== undefined) {
      resolved.wheel_drop_left = msg.wheel_drop_left;
    }
    else {
      resolved.wheel_drop_left = false
    }

    if (msg.wheel_drop_right !== undefined) {
      resolved.wheel_drop_right = msg.wheel_drop_right;
    }
    else {
      resolved.wheel_drop_right = false
    }

    if (msg.wheel_over_current_left !== undefined) {
      resolved.wheel_over_current_left = msg.wheel_over_current_left;
    }
    else {
      resolved.wheel_over_current_left = false
    }

    if (msg.wheel_over_current_right !== undefined) {
      resolved.wheel_over_current_right = msg.wheel_over_current_right;
    }
    else {
      resolved.wheel_over_current_right = false
    }

    return resolved;
    }
};

module.exports = SparkBaseSensor;
