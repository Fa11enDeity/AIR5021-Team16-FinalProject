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

class GyroMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acvx = null;
      this.acvy = null;
      this.acvz = null;
      this.anvx = null;
      this.anvy = null;
      this.anvz = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.bx = null;
      this.by = null;
      this.bz = null;
    }
    else {
      if (initObj.hasOwnProperty('acvx')) {
        this.acvx = initObj.acvx
      }
      else {
        this.acvx = 0.0;
      }
      if (initObj.hasOwnProperty('acvy')) {
        this.acvy = initObj.acvy
      }
      else {
        this.acvy = 0.0;
      }
      if (initObj.hasOwnProperty('acvz')) {
        this.acvz = initObj.acvz
      }
      else {
        this.acvz = 0.0;
      }
      if (initObj.hasOwnProperty('anvx')) {
        this.anvx = initObj.anvx
      }
      else {
        this.anvx = 0.0;
      }
      if (initObj.hasOwnProperty('anvy')) {
        this.anvy = initObj.anvy
      }
      else {
        this.anvy = 0.0;
      }
      if (initObj.hasOwnProperty('anvz')) {
        this.anvz = initObj.anvz
      }
      else {
        this.anvz = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('bx')) {
        this.bx = initObj.bx
      }
      else {
        this.bx = 0.0;
      }
      if (initObj.hasOwnProperty('by')) {
        this.by = initObj.by
      }
      else {
        this.by = 0.0;
      }
      if (initObj.hasOwnProperty('bz')) {
        this.bz = initObj.bz
      }
      else {
        this.bz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GyroMessage
    // Serialize message field [acvx]
    bufferOffset = _serializer.float32(obj.acvx, buffer, bufferOffset);
    // Serialize message field [acvy]
    bufferOffset = _serializer.float32(obj.acvy, buffer, bufferOffset);
    // Serialize message field [acvz]
    bufferOffset = _serializer.float32(obj.acvz, buffer, bufferOffset);
    // Serialize message field [anvx]
    bufferOffset = _serializer.float32(obj.anvx, buffer, bufferOffset);
    // Serialize message field [anvy]
    bufferOffset = _serializer.float32(obj.anvy, buffer, bufferOffset);
    // Serialize message field [anvz]
    bufferOffset = _serializer.float32(obj.anvz, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [bx]
    bufferOffset = _serializer.float32(obj.bx, buffer, bufferOffset);
    // Serialize message field [by]
    bufferOffset = _serializer.float32(obj.by, buffer, bufferOffset);
    // Serialize message field [bz]
    bufferOffset = _serializer.float32(obj.bz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GyroMessage
    let len;
    let data = new GyroMessage(null);
    // Deserialize message field [acvx]
    data.acvx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acvy]
    data.acvy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acvz]
    data.acvz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [anvx]
    data.anvx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [anvy]
    data.anvy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [anvz]
    data.anvz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bx]
    data.bx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [by]
    data.by = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bz]
    data.bz = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spark_base/GyroMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bc41d895c9f0f7df678a987f8d8ab7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # This expresses
    #加速度　ac
    float32  acvx	
    float32  acvy
    float32  acvz
    #角速度　an
    float32  anvx
    float32  anvy
    float32  anvz
    #横滚角
    float32  roll
    #俯仰角
    float32  pitch
    #航向角
    float32  yaw
    #磁感应度　b
    float32  bx
    float32  by
    float32  bz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GyroMessage(null);
    if (msg.acvx !== undefined) {
      resolved.acvx = msg.acvx;
    }
    else {
      resolved.acvx = 0.0
    }

    if (msg.acvy !== undefined) {
      resolved.acvy = msg.acvy;
    }
    else {
      resolved.acvy = 0.0
    }

    if (msg.acvz !== undefined) {
      resolved.acvz = msg.acvz;
    }
    else {
      resolved.acvz = 0.0
    }

    if (msg.anvx !== undefined) {
      resolved.anvx = msg.anvx;
    }
    else {
      resolved.anvx = 0.0
    }

    if (msg.anvy !== undefined) {
      resolved.anvy = msg.anvy;
    }
    else {
      resolved.anvy = 0.0
    }

    if (msg.anvz !== undefined) {
      resolved.anvz = msg.anvz;
    }
    else {
      resolved.anvz = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.bx !== undefined) {
      resolved.bx = msg.bx;
    }
    else {
      resolved.bx = 0.0
    }

    if (msg.by !== undefined) {
      resolved.by = msg.by;
    }
    else {
      resolved.by = 0.0
    }

    if (msg.bz !== undefined) {
      resolved.bz = msg.bz;
    }
    else {
      resolved.bz = 0.0
    }

    return resolved;
    }
};

module.exports = GyroMessage;
