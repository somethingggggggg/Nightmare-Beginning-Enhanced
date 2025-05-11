///playerGetHit

with FinalSonic
{
if Timer.Min = 10
{
    global.SLive -= 1
    instance_create(x,y,FinalSonicDeath)
    instance_destroy()
    exit;
}
Idie_mode = false
if global.rings !=0
{
if rolling = true
{
rolling = false
}
if spindash = true
{
spindash = false
}

  sound_play(global.S_LoseRings)
  canHit = false;
  canSpriteChange = false;
  canMove = false;
  sprite_index = sprSonicHit;
  vspeed = -5;
  global.vel = image_xscale * -2.5;
  ground = false;

 var t, angle, n, spd;
 t = 0
 angle = 101.25;
 n = false;
 spd = 4

 while t < global.rings
   {
   var ringID;
   ringID = instance_create(x, y, RingLoss);
   ringID.vspeed = -sin(angle)*spd;
   ringID.hspeed = cos(angle)*spd;
   if n == true
     {
     ringID.hspeed *= -1;
     angle += 22.5;
     }
   n = !n;
   t += 1
   if t == 16
     {
     spd = 2;
     angle = 101.25;
   }
 }

  global.rings = 0;
}
else if global.rings = 0 && canHit = true
{
global.SLive -= 1
instance_create(x,y,FinalSonicDeath)
instance_destroy()
}
}


with DM_Knuckles
{
Idie_mode = false
if global.rings !=0
{
if rolling = true
{
rolling = false
}
if spindash = true
{
spindash = false
}

  sound_play(global.S_LoseRings)
  canHit = false;
  canSpriteChange = false;
  canMove = false;
  sprite_index = sprKnucklesHit;
  vspeed = -5;
  global.vel = image_xscale * -2.5;
  ground = false;

 var t, angle, n, spd;
 t = 0
 angle = 101.25;
 n = false;
 spd = 4

 while t < global.rings
   {
   var ringID;
   ringID = instance_create(x, y, RingLoss);
   ringID.vspeed = -sin(angle)*spd;
   ringID.hspeed = cos(angle)*spd;
   if n == true
     {
     ringID.hspeed *= -1;
     angle += 22.5;
     }
   n = !n;
   t += 1
   if t == 16
     {
     spd = 2;
     angle = 101.25;
   }
 }

  global.rings = 0;
}
else if global.rings = 0 && canHit = true
{
global.KLive -= 1
instance_create(x,y,KnucklesDeath)
instance_destroy()
}
}


with DM_Tails
{
Idie_mode = false
if global.rings !=0
{
if Fly = true
{
Fly = false
}
if rolling = true
{
rolling = false
}
if spindash = true
{
spindash = false
}

  sound_play(global.S_LoseRings)
  canHit = false;
  canSpriteChange = false;
  canMove = false;
  sprite_index = sprTailsHit;
  vspeed = -5;
  global.vel = image_xscale * -2.5;
  ground = false;

 var t, angle, n, spd;
 t = 0
 angle = 101.25;
 n = false;
 spd = 4

 while t < global.rings
   {
   var ringID;
   ringID = instance_create(x, y, RingLoss);
   ringID.vspeed = -sin(angle)*spd;
   ringID.hspeed = cos(angle)*spd;
   if n == true
     {
     ringID.hspeed *= -1;
     angle += 22.5;
     }
   n = !n;
   t += 1
   if t == 16
     {
     spd = 2;
     angle = 101.25;
   }
 }

  global.rings = 0;
}
else if global.rings = 0 && canHit = true
{
global.TLive -= 1
instance_create(x,y,TailsDeath)
instance_destroy()
}}

with DM_Sonic
{
Idie_mode = false
if global.rings !=0
{
if rolling = true
{
rolling = false
}
if spindash = true
{
spindash = false
}

  sound_play(global.S_LoseRings)
  canHit = false;
  canSpriteChange = false;
  canMove = false;
  sprite_index = sprSonicHit;
  vspeed = -5;
  global.vel = image_xscale * -2.5;
  ground = false;

 var t, angle, n, spd;
 t = 0
 angle = 101.25;
 n = false;
 spd = 4

 while t < global.rings
   {
   var ringID;
   ringID = instance_create(x, y, RingLoss);
   ringID.vspeed = -sin(angle)*spd;
   ringID.hspeed = cos(angle)*spd;
   if n == true
     {
     ringID.hspeed *= -1;
     angle += 22.5;
     }
   n = !n;
   t += 1
   if t == 16
     {
     spd = 2;
     angle = 101.25;
   }
 }

  global.rings = 0;
}
else if global.rings = 0 && canHit = true
{
global.SLive -= 1
instance_create(x,y,FinalSonicDeath)
instance_destroy()
}}

with DM_Metal
{
Idie_mode = false
if global.rings !=0
{
if rolling = true
{
rolling = false
}
if spindash = true
{
spindash = false
}

  sound_play(global.S_Hit)
  canHit = false;
  canSpriteChange = false;
  canMove = false;
  sprite_index = sprMS_Hit;
  vspeed = -5;
  global.vel = image_xscale * -2.5;
  ground = false;

 var t, angle, n, spd;
 t = 0
 angle = 101.25;
 n = false;
 spd = 4

 while t < global.rings
   {
   var ringID;
   ringID = instance_create(x, y, RingLoss);
   ringID.vspeed = -sin(angle)*spd;
   ringID.hspeed = cos(angle)*spd;
   if n == true
     {
     ringID.hspeed *= -1;
     angle += 22.5;
     }
   n = !n;
   t += 1
   if t == 16
     {
     spd = 2;
     angle = 101.25;
   }
 }

  global.rings = 0;
}
else if global.rings = 0 && canHit = true
{
instance_create(x,y,MS_Death)
instance_destroy()
}
}
//fuck this to hell
with Tails
{
    global.TLive -= 1
    instance_create(x,y,TailsDeath)
    with HvostStand instance_destroy()
    instance_destroy()
}
with Tails2
{
    global.TLive -= 1
    instance_create(x,y,TailsDeath)
    with HvostStand instance_destroy()
    instance_destroy()
}
with Tails3
{
    global.TLive -= 1
    instance_create(x,y,TailsDeath)
    with HvostStand2 instance_destroy()
    instance_destroy()
}
with Tails4
{
    global.TLive -= 1
    instance_create(x,y,TailsDeath)
    with HvostStand instance_destroy()
    instance_destroy()
}
with Knuckles
{
    global.KLive -= 1
    instance_create(x,y,KnucklesDeath)
    instance_destroy()
}

with ExetiorBonus
{
    Idie_mode = false
    if global.rings != 0
    {
        rolling = false
        spindash = false
        Hitted=1
        sound_play(global.S_LoseRings)
        canHit = false;
        canSpriteChange = false;
        canMove = false;
        sprite_index = sprExeHurtCircle;
        vspeed = -5;
        global.vel = image_xscale * -2.5;
        ground = false;

        var t, angle, n, spd;
        t = 0
        angle = 101.25;
        n = false;
        spd = 4

        while t < global.rings
        {
            var ringID;
            ringID = instance_create(x, y, RingLoss);
            ringID.vspeed = -sin(angle)*spd;
            ringID.hspeed = cos(angle)*spd;
            if n == true
            {
                ringID.hspeed *= -1;
                angle += 22.5;
            }
            n = !n;
            t += 1
            if t == 16
            {
                spd = 2;
                angle = 101.25;
            }
        }

        global.rings = 0;
    }
    else if global.rings = 0 && canHit = true
    {
        global.SLive -= 1
        instance_create(x,y,ExetiorDeath)
        instance_destroy()
    }
}
