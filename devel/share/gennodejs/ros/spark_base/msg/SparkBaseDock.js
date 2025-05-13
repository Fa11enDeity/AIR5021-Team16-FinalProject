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

class SparkBaseDock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.search_dock = null;
      this.touch_charge = null;
      this.plug_charge = null;
      this.dock_dir_left = null;
      this.dock_dir_right = null;
      this.dock_dir_front = null;
      this.dock_dir_BACK = null;
    }
    else {
      if (initObj.hasOwnProperty('search_dock')) {
        this.search_dock = initObj.search_dock
      }
      else {
        this.search_dock = false;
      }
      if (initObj.hasOwnProperty('touch_charge')) {
        this.touch_charge = initObj.touch_charge
      }
      else {
        this.touch_charge = false;
      }
      if (initObj.hasOwnProperty('plug_charge')) {
        this.plug_charge = initObj.plug_charge
      }
      else {
        this.plug_charge = false;
      }
      if (initObj.hasOwnProperty('dock_dir_left')) {
        this.dock_dir_left = initObj.dock_dir_left
      }
      else {
        this.dock_dir_left = false;
      }
      if (initObj.hasOwnProperty('dock_dir_right')) {
        this.dock_dir_right = initObj.dock_dir_right
      }
      else {
        this.dock_dir_right = false;
      }
      if (initObj.hasOwnProperty('dock_dir_front')) {
        this.dock_dir_front = initObj.dock_dir_front
      }
      else {
        this.dock_dir_front = false;
      }
      if (initObj.hasOwnProperty('dock_dir_BACK')) {
        this.dock_dir_BACK = initObj.dock_dir_BACK
      }
      else {
        this.dock_dir_BACK = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SparkBaseDock
    // Serialize message field [search_dock]
    bufferOffset = _serializer.bool(obj.search_dock, buffer, bufferOffset);
    // Serialize message field [touch_charge]
    bufferOffset = _serializer.bool(obj.touch_charge, buffer, bufferOffset);
    // Serialize message field [plug_charge]
    bufferOffset = _serializer.bool(obj.plug_charge, buffer, bufferOffset);
    // Serialize message field [dock_dir_left]
    bufferOffset = _serializer.bool(obj.dock_dir_left, buffer, bufferOffset);
    // Serialize message field [dock_dir_right]
    bufferOffset = _serializer.bool(obj.dock_dir_right, buffer, bufferOffset);
    // Serialize message field [dock_dir_front]
    bufferOffset = _serializer.bool(obj.dock_dir_front, buffer, bufferOffset);
    // Serialize message field [dock_dir_BACK]
    bufferOffset = _serializer.bool(obj.dock_dir_BACK, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SparkBaseDock
    let len;
    let data = new SparkBaseDock(null);
    // Deserialize message field [search_dock]
    data.search_dock = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [touch_charge]
    data.touch_charge = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [plug_charge]
    data.plug_charge = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dock_dir_left]
    data.dock_dir_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dock_dir_right]
    data.dock_dir_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dock_dir_front]
    data.dock_dir_front = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dock_dir_BACK]
    data.dock_dir_BACK = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'spark_base/SparkBaseDock';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af3cc2d3264fd6c34b48ddc58b42fe5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool search_dock
    bool touch_charge
    bool plug_charge
    
    bool dock_dir_left
    bool dock_dir_right
    bool dock_dir_front
    bool dock_dir_BACK
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SparkBaseDock(null);
    if (msg.search_dock !== undefined) {
      resolved.search_dock = msg.search_dock;
    }
    else {
      resolved.search_dock = false
    }

    if (msg.touch_charge !== undefined) {
      resolved.touch_charge = msg.touch_charge;
    }
    else {
      resolved.touch_charge = false
    }

    if (msg.plug_charge !== undefined) {
      resolved.plug_charge = msg.plug_charge;
    }
    else {
      resolved.plug_charge = false
    }

    if (msg.dock_dir_left !== undefined) {
      resolved.dock_dir_left = msg.dock_dir_left;
    }
    else {
      resolved.dock_dir_left = false
    }

    if (msg.dock_dir_right !== undefined) {
      resolved.dock_dir_right = msg.dock_dir_right;
    }
    else {
      resolved.dock_dir_right = false
    }

    if (msg.dock_dir_front !== undefined) {
      resolved.dock_dir_front = msg.dock_dir_front;
    }
    else {
      resolved.dock_dir_front = false
    }

    if (msg.dock_dir_BACK !== undefined) {
      resolved.dock_dir_BACK = msg.dock_dir_BACK;
    }
    else {
      resolved.dock_dir_BACK = false
    }

    return resolved;
    }
};

module.exports = SparkBaseDock;
