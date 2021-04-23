package firesim.firesim

import freechips.rocketchip.config.{Config}

import firesim.bridges._
import firesim.configs._

//**********************************************************************************
//* EE290-2 FireSim Gemmini Configurations
//*********************************************************************************/

// Rocket-based

// class FireSimGemminiEE290Lab3RocketConfig extends Config(
//   new WithDefaultFireSimBridges ++
//   new WithDefaultMemModel ++
//   new WithFireSimConfigTweaks ++
//   new chipyard.GemminiEE290Lab3RocketConfig)

// class FireSimGemminiEE290Lab3SmallSPRocketConfig extends Config(
//   new WithDefaultFireSimBridges ++
//   new WithDefaultMemModel ++
//   new WithFireSimConfigTweaks ++
//   new chipyard.GemminiEE290Lab3SmallSPRocketConfig)

// BOOM-based

// class FireSimGemminiEE290Lab3BoomConfig extends Config(
//   new WithDefaultFireSimBridges ++
//   new WithDefaultMemModel ++
//   new WithFireSimConfigTweaks ++
//   new chipyard.GemminiEE290Lab3BoomConfig)

// class FireSimGemminiEE290Lab3SmallSPBoomConfig extends Config(
//   new WithDefaultFireSimBridges ++
//   new WithDefaultMemModel ++
//   new WithFireSimConfigTweaks ++
//   new chipyard.GemminiEE290Lab3SmallSPBoomConfig)

class FireSimGemminiBF16DefaultBoomConfig extends Config(
  new WithDefaultFireSimBridges ++
  new WithDefaultMemModel ++
  new WithFireSimConfigTweaks ++
  new chipyard.GemminiBF16DefaultBoomConfig)

class FireSimGemminiFP32DefaultBoomConfig extends Config(
  new WithDefaultFireSimBridges ++
  new WithDefaultMemModel ++
  new WithFireSimConfigTweaks ++
  new chipyard.GemminiFP32DefaultBoomConfig)

