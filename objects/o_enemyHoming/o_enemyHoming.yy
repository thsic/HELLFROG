{
  "spriteId": {
    "name": "s_enemyHoming",
    "path": "sprites/s_enemyHoming/s_enemyHoming.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "o_enemy",
    "path": "objects/o_enemy/o_enemy.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 0,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":1,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":7,"value":"$FF3E7F61","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"smog_color1","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":7,"value":"$FF47B2A2","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"smog_color2","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"1","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"homing_player","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"True","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"view_range","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"400","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"weapon_range","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"32","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"movement_speed","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"1.5","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"fire_script","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"enemy_fire_self_destruct","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"weapon_charge_time_default","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"10","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"afterfire_time_default","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"1","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"rigor_after_find_player_default","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"1","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"stun_resistance_default","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"30","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"soul_enemy","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"False","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"sprite_enable","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"False","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"increase_orb_quantity","path":"objects/o_enemy/o_enemy.yy",},"objectId":{"name":"o_enemy","path":"objects/o_enemy/o_enemy.yy",},"value":"False","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "group1",
    "path": "folders/Objects/enemy/group1.yy",
  },
  "resourceVersion": "1.0",
  "name": "o_enemyHoming",
  "tags": [],
  "resourceType": "GMObject",
}