{
  "spriteId": {
    "name": "s_enemyBulletBlast",
    "path": "sprites/s_enemyBulletBlast/s_enemyBulletBlast.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "o_enemyBullet",
    "path": "objects/o_enemyBullet/o_enemyBullet.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"o_player","path":"objects/o_player/o_player.yy",},"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":7,"value":"$FF1433CC","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"blast_color","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":7,"value":"$FF0A0A66","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"marker_color","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"20","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"stay_time","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":7,"value":"$FF0A1966","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"trail_color","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"s_blastBulletCreate","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"bullet_shoot_sound","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"bullet_fire_sound","path":"objects/o_enemyBullet/o_enemyBullet.yy",},"objectId":{"name":"o_enemyBullet","path":"objects/o_enemyBullet/o_enemyBullet.yy",},"value":"a_blastBulletBlast","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "bullet",
    "path": "folders/Objects/enemy/bullet.yy",
  },
  "resourceVersion": "1.0",
  "name": "o_enemyBulletBlast",
  "tags": [],
  "resourceType": "GMObject",
}