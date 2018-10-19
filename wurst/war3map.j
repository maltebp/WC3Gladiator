//===========================================================================
// 
// Simple Hero Survival
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Fri Oct 19 12:33:21 2018
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
    trigger                 gg_trg_Untitled_Trigger_001 = null
    unit                    gg_unit_hfoo_0007          = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Items
//*
//***************************************************************************

function CreateAllItems takes nothing returns nothing
    local integer itemID

    call CreateItem( 'I000', 466.7, 175.4 )
    call CreateItem( 'I000', 432.0, 73.4 )
    call CreateItem( 'I000', 333.2, 82.9 )
    call CreateItem( 'I000', 287.2, 138.0 )
    call CreateItem( 'I000', 355.9, 168.6 )
    call CreateItem( 'blba', 635.4, 136.3 )
    call CreateItem( 'blba', 587.6, 280.0 )
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'O000', 537.7, 363.5, 152.253 )
    call SetUnitColor( u, ConvertPlayerColor(16) )
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p = Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit( p, 'hfoo', -536.7, 1344.7, 317.624 )
    set u = CreateUnit( p, 'hfoo', -617.0, 1364.0, 39.607 )
    set u = CreateUnit( p, 'hfoo', -683.7, 1333.5, 254.517 )
    set u = CreateUnit( p, 'hfoo', -702.9, 1233.4, 53.362 )
    set u = CreateUnit( p, 'hfoo', -709.1, 1133.9, 104.132 )
    set u = CreateUnit( p, 'hfoo', -692.1, 1065.8, 321.854 )
    set u = CreateUnit( p, 'hfoo', -628.3, 1067.1, 222.612 )
    set gg_unit_hfoo_0007 = CreateUnit( p, 'hfoo', -576.9, 1120.1, 132.499 )
    set u = CreateUnit( p, 'hfoo', -556.3, 1182.1, 118.667 )
    set u = CreateUnit( p, 'hfoo', -596.3, 1249.9, 317.888 )
    set u = CreateUnit( p, 'hfoo', -639.4, 1182.1, 335.291 )
    set u = CreateUnit( p, 'hfoo', -528.8, 1272.7, 301.837 )
    set u = CreateUnit( p, 'hfoo', -451.2, 1294.3, 118.173 )
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0(  )
    call CreateUnitsForPlayer1(  )
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
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

    set gg_rct_Shop_CamBounds = Rect( -8288.0, -8672.0, -7904.0, -8256.0 )
    set gg_rct_Shop_Visibility = Rect( -8704.0, -8960.0, -7424.0, -7808.0 )
    set gg_rct_Arena_CamBounds = Rect( -224.0, -32.0, 672.0, 1056.0 )
    set gg_rct_Arena_Visibility = Rect( -1024.0, -640.0, 1408.0, 1632.0 )
    set gg_rct_Arena_Spawn1 = Rect( -704.0, -320.0, 1056.0, 1280.0 )
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Untitled Trigger 001
//===========================================================================
function Trig_Untitled_Trigger_001_Actions takes nothing returns nothing
    call CreateItemLoc( GetItemTypeId(UnitItemInSlotBJ(gg_unit_hfoo_0007, 1)), GetRectCenter(GetPlayableMapRect()) )
endfunction

//===========================================================================
function InitTrig_Untitled_Trigger_001 takes nothing returns nothing
    set gg_trg_Untitled_Trigger_001 = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Untitled_Trigger_001, function Trig_Untitled_Trigger_001_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Untitled_Trigger_001(  )
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
    call SetPlayerRacePreference( Player(0), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(0), true )
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
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "VillageDay" )
    call SetAmbientNightSound( "VillageNight" )
    call SetMapMusic( "Music", true, 0 )
    call CreateRegions(  )
    call CreateAllItems(  )
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

    call DefineStartLocation( 0, -2496.0, -384.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call SetPlayerSlotAvailable( Player(0), MAP_CONTROL_USER )
    call InitGenericPlayerSlots(  )
endfunction

