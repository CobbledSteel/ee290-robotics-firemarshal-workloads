package chipyard

import chisel3._

import freechips.rocketchip.config.{Config}

// --------------------
// EE290 Rocket Configs
// --------------------

// Rocket-based

// class GemminiEE290Lab3RocketConfig extends Config(
//   new gemmini.GemminiEE290Lab3Config ++
//   new freechips.rocketchip.subsystem.WithNBigCores(1) ++
//   new chipyard.config.AbstractConfig)

// class GemminiEE290Lab3SmallSPRocketConfig extends Config(
//   new gemmini.GemminiEE290Lab3SmallSPConfig ++
//   new freechips.rocketchip.subsystem.WithNBigCores(1) ++
//   new chipyard.config.AbstractConfig)

// // BOOM-based

// class GemminiEE290Lab3BoomConfig extends Config(
//   new gemmini.GemminiEE290Lab3Config ++
//   new boom.common.WithNLargeBooms(1) ++
//   new chipyard.config.AbstractConfig)

// class GemminiEE290Lab3SmallSPBoomConfig extends Config(
//   new gemmini.GemminiEE290Lab3SmallSPConfig ++
//   new boom.common.WithNLargeBooms(1) ++
//   new chipyard.config.AbstractConfig)

class GemminiBF16DefaultBoomConfig extends Config(
  new gemmini.GemminiBF16DefaultConfig ++
  new boom.common.WithNLargeBooms(1) ++
  new chipyard.config.AbstractConfig)

class GemminiFP32DefaultBoomConfig extends Config(
new gemmini.GemminiFP32DefaultConfig ++
new boom.common.WithNLargeBooms(1) ++
new chipyard.config.AbstractConfig)

class GemminiFP32Default8BoomConfig extends Config(
new gemmini.GemminiFP32Default8Config ++
new boom.common.WithNLargeBooms(1) ++
new chipyard.config.AbstractConfig)

class GemminiFP64DefaultBoomConfig extends Config(
new gemmini.GemminiFP64DefaultConfig ++
new boom.common.WithNLargeBooms(1) ++
new chipyard.config.AbstractConfig)