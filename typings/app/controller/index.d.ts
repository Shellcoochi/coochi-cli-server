// This file is created by egg-ts-helper@1.30.3
// Do not modify this file!!!!!!!!!

import 'egg';
import ExportProject = require('../../../app/controller/project');

declare module 'egg' {
  interface IController {
    project: ExportProject;
  }
}
