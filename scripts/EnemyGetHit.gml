///EnemyGetHit

with FinalExetior
  canHit = false;
  canSpriteChange = false;
  canMove = false;
  sprite_index = sprFinalExe_Hit;
  sound_play(Hit_S)
  vspeed = -5;
  vel = image_xscale * -2.5;
  ground = false;
