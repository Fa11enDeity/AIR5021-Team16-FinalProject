// Auto-generated. Do not edit!

// (in-package spark_carry_object.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class sceneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.param = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('param')) {
        this.param = initObj.param
      }
      else {
        this.param = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sceneRequest
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [param]
    bufferOffset = _serializer.string(obj.param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sceneRequest
    let len;
    let data = new sceneRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [param]
    data.param = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.param);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spark_carry_object/sceneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfaeb5ba72ab6b13b3a772bb00f8bfaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 END = 0
    uint8 RUN  = 1
    uint8 PEND = 2
    uint8 SEARCH  = 3
    
    uint8 type
    string param
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sceneRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.param !== undefined) {
      resolved.param = msg.param;
    }
    else {
      resolved.param = ''
    }

    return resolved;
    }
};

// Constants for message
sceneRequest.Constants = {
  END: 0,
  RUN: 1,
  PEND: 2,
  SEARCH: 3,
}

class sceneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type sceneResponse
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sceneResponse
    let len;
    let data = new sceneResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'spark_carry_object/sceneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c807b136c51feed744b4445b9347e65c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SUCCESS = 0
    uint8 RUNNING  = 1
    uint8 PENDING = 2
    uint8 FAILURE  = 3
    
    uint8 status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sceneResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
sceneResponse.Constants = {
  SUCCESS: 0,
  RUNNING: 1,
  PENDING: 2,
  FAILURE: 3,
}

module.exports = {
  Request: sceneRequest,
  Response: sceneResponse,
  md5sum() { return 'db8f4e4997dce45d9d28ca5947e2928a'; },
  datatype() { return 'spark_carry_object/scene'; }
};
