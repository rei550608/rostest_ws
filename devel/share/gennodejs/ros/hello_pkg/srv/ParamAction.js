// Auto-generated. Do not edit!

// (in-package hello_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.paramName = null;
      this.value = null;
      this.filename = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('paramName')) {
        this.paramName = initObj.paramName
      }
      else {
        this.paramName = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamActionRequest
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [paramName]
    bufferOffset = _serializer.string(obj.paramName, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int64(obj.value, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamActionRequest
    let len;
    let data = new ParamActionRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [paramName]
    data.paramName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.action.length;
    length += object.paramName.length;
    length += object.filename.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hello_pkg/ParamActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e3e41e7c0781512dc5f8cc72daf61c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  action
    string  paramName
    int64   value
    string  filename
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamActionRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.paramName !== undefined) {
      resolved.paramName = msg.paramName;
    }
    else {
      resolved.paramName = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    return resolved;
    }
};

class ParamActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamActionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamActionResponse
    let len;
    let data = new ParamActionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hello_pkg/ParamActionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool    success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamActionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ParamActionRequest,
  Response: ParamActionResponse,
  md5sum() { return '945ecb72549f28b95525ed9d393f5e1c'; },
  datatype() { return 'hello_pkg/ParamAction'; }
};
