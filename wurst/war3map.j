//===========================================================================
// 
// Gladiator
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Fri Dec  7 20:21:17 2018
//   Map Author: Lake
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
    // Generated
    rect                    gg_rct_Shop_CamBounds      = null
    rect                    gg_rct_Shop_Visibility     = null
    rect                    gg_rct_Arena_CamBounds     = null
    rect                    gg_rct_Arena_Visibility    = null
    rect                    gg_rct_Arena_Spawn1        = null
    sound                   gg_snd_O05Grom37           = null
    sound                   gg_snd_ClockwerkGoblinYesAttack1 = null
    sound                   gg_snd_IronGolemYesAttack3 = null
    sound                   gg_snd_IronGolemYes3       = null
    sound                   gg_snd_IronGolemYes1       = null
    sound                   gg_snd_PursuitTheme        = null
    trigger                 gg_trg_Untitled_Trigger_004 = null
    trigger                 gg_trg_Untitled_Trigger_001 = null
    trigger                 gg_trg_Untitled_Trigger_002 = null
    trigger                 gg_trg_Untitled_Trigger_003 = null
    trigger                 gg_trg_Untitled_Trigger_005 = null
    unit                    gg_unit_n002_0017          = null
    unit                    gg_unit_n00K_0002          = null
    unit                    gg_unit_n003_0015          = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Sounds
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_O05Grom37 = CreateSound( "Sound\\Dialogue\\OrcCampaign\\Orc05\\O05Grom37.mp3", false, false, false, 10, 10, "" )
    call SetSoundParamsFromLabel( gg_snd_O05Grom37, "O05Grom37" )
    call SetSoundDuration( gg_snd_O05Grom37, 1985 )
    set gg_snd_ClockwerkGoblinYesAttack1 = CreateSound( "Units\\Creeps\\HeroTinkerRobot\\ClockwerkGoblinYesAttack1.wav", false, true, true, 10, 10, "HeroAcksEAX" )
    call SetSoundParamsFromLabel( gg_snd_ClockwerkGoblinYesAttack1, "ClockwerkGoblinYesAttack" )
    call SetSoundDuration( gg_snd_ClockwerkGoblinYesAttack1, 1416 )
    set gg_snd_IronGolemYesAttack3 = CreateSound( "Units\\Creeps\\IronGolem\\IronGolemYesAttack3.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_IronGolemYesAttack3, "IronGolemYesAttack" )
    call SetSoundDuration( gg_snd_IronGolemYesAttack3, 2153 )
    set gg_snd_IronGolemYes3 = CreateSound( "Units\\Creeps\\IronGolem\\IronGolemYes3.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_IronGolemYes3, "IronGolemYes" )
    call SetSoundDuration( gg_snd_IronGolemYes3, 2437 )
    set gg_snd_IronGolemYes1 = CreateSound( "Units\\Creeps\\IronGolem\\IronGolemYes1.wav", false, true, true, 10, 10, "DefaultEAXON" )
    call SetSoundParamsFromLabel( gg_snd_IronGolemYes1, "IronGolemYes" )
    call SetSoundDuration( gg_snd_IronGolemYes1, 2215 )
    set gg_snd_PursuitTheme = CreateSound( "Sound\\Music\\mp3Music\\PursuitTheme.mp3", false, false, false, 10, 10, "" )
    call SetSoundDuration( gg_snd_PursuitTheme, 82625 )
    call SetSoundChannel( gg_snd_PursuitTheme, 0 )
    call SetSoundVolume( gg_snd_PursuitTheme, 127 )
    call SetSoundPitch( gg_snd_PursuitTheme, 1.0 )
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_n00K_0002 = CreateUnit( p, 'n00K', -8448.0, -8128.0, 270.000 )
    set u = CreateUnit( p, 'n001', -8128.0, -8000.0, 270.000 )
    set gg_unit_n003_0015 = CreateUnit( p, 'n003', -8512.0, -8704.0, 270.000 )
    set gg_unit_n002_0017 = CreateUnit( p, 'n002', -7808.0, -8768.0, 270.000 )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings(  )
    call CreatePlayerBuildings(  )
    call CreatePlayerUnits(  )
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_Shop_CamBounds = Rect( -8288.0, -8608.0, -7904.0, -8160.0 )
    set gg_rct_Shop_Visibility = Rect( -8800.0, -8992.0, -7392.0, -7744.0 )
    set we = AddWeatherEffect( gg_rct_Shop_Visibility, 'FDwl' )
    call EnableWeatherEffect( we, true )
    set gg_rct_Arena_CamBounds = Rect( -224.0, 32.0, 416.0, 1024.0 )
    set gg_rct_Arena_Visibility = Rect( -1024.0, -640.0, 1280.0, 1664.0 )
    set gg_rct_Arena_Spawn1 = Rect( -544.0, -192.0, 768.0, 1248.0 )
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Untitled Trigger 004
//===========================================================================
function Trig_Untitled_Trigger_004_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_004 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_004 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_004, function Trig_Untitled_Trigger_004_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 001
//===========================================================================
function Trig_Untitled_Trigger_001_Actions takes nothing returns nothing
    call UnitRemoveBuffBJ( 'BUad', GetTriggerUnit() )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_001 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_001 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_001, function Trig_Untitled_Trigger_001_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 002
//===========================================================================
function Trig_Untitled_Trigger_002_Actions takes nothing returns nothing
    call CustomVictoryBJ( Player(0), true, true )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_002 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_002 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_002, function Trig_Untitled_Trigger_002_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 003
//===========================================================================
function Trig_Untitled_Trigger_003_Actions takes nothing returns nothing
    call BlzSetUnitArmor( gg_unit_n00K_0002, 0.00 )
    call BlzSetUnitArmor( gg_unit_n003_0015, 0.00 )
    call BlzSetUnitArmor( gg_unit_n002_0017, 0.00 )
    call BlzSetUnitArmor( gg_unit_n00K_0002, 0.00 )
    call BlzSetUnitArmor( gg_unit_n00K_0002, 0.00 )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_003 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_003 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_003, function Trig_Untitled_Trigger_003_Actions )
endfunction

//===========================================================================
// Trigger: Untitled Trigger 005
//===========================================================================
function Trig_Untitled_Trigger_005_Actions takes nothing returns nothing
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_005 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_005 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_005, function Trig_Untitled_Trigger_005_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Untitled_Trigger_004(  )
    call InitTrig_Untitled_Trigger_001(  )
    call InitTrig_Untitled_Trigger_002(  )
    call InitTrig_Untitled_Trigger_003(  )
    call InitTrig_Untitled_Trigger_005(  )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_ORC )
    call SetPlayerRaceSelectable( Player(0), false )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam( Player(0), 0 )

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -9472.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -9728.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 9472.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -9472.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 9216.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 9472.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -9728.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call NewSoundEnvironment( "Dungeon" )
    call SetAmbientDaySound( "VillageDay" )
    call SetAmbientNightSound( "VillageNight" )
    call SetMapMusic( "Music", true, 0 )
    call InitSounds(  )
    call CreateRegions(  )
    call CreateAllUnits(  )
    call InitBlizzard(  )
    call InitGlobals(  )
    call InitCustomTriggers(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_003" )
    call SetMapDescription( "TRIGSTR_005" )
    call SetPlayers( 1 )
    call SetTeams( 1 )
    call SetGamePlacement( MAP_PLACEMENT_USE_MAP_SETTINGS )

    call DefineStartLocation( 0, 128.0, 512.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
endfunction

