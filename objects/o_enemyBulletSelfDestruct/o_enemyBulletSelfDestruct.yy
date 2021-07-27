{
  "spriteId": null,
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
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":0,"value":"48","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"blast_size","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":7,"value":"$FF51CCC6","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"blast_color","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"bullet_create_sound","path":"objects/o_enemyBullet/o_enemyBullet.yy",},"objectId":{"name":"o_enemyBullet","path":"objects/o_enemyBullet/o_enemyBullet.yy",},"value":"a_blastBulletBlast","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "bullet",
    "path": "folders/Objects/enemy/bullet.yy",
  },
  "resourceVersion": "1.0",
  "name": "o_enemyBulletSelfDestruct",
  "tags": [],
  "resourceType": "GMObject",
}