
"use strict";

let VisionInfo = require('./VisionInfo.js');
let Detection3DArray = require('./Detection3DArray.js');
let Classification3D = require('./Classification3D.js');
let Detection2DArray = require('./Detection2DArray.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let Classification2D = require('./Classification2D.js');
let Detection2D = require('./Detection2D.js');
let Detection3D = require('./Detection3D.js');
let ObjectHypothesis = require('./ObjectHypothesis.js');
let BoundingBox2D = require('./BoundingBox2D.js');
let ObjectHypothesisWithPose = require('./ObjectHypothesisWithPose.js');

module.exports = {
  VisionInfo: VisionInfo,
  Detection3DArray: Detection3DArray,
  Classification3D: Classification3D,
  Detection2DArray: Detection2DArray,
  BoundingBox3D: BoundingBox3D,
  Classification2D: Classification2D,
  Detection2D: Detection2D,
  Detection3D: Detection3D,
  ObjectHypothesis: ObjectHypothesis,
  BoundingBox2D: BoundingBox2D,
  ObjectHypothesisWithPose: ObjectHypothesisWithPose,
};
