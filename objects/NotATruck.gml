#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x-14,y,MinecartSpikeLeft)
instance_create(x+sprite_width-2,y,MinecartSpikeRight)
if(room==rmPreStage3)
    image_speed=0
else
    image_speed=0.5
if(room==rmPreStage4)
    hspeed=6
t=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(room==rmPreStage3){
    if(place_meeting(x,y-1,Player)){
        t+=1
        Player.frozen=true
        if(instance_exists(SolidTileDisplay)){
            with(SolidTileDisplay)
                instance_destroy()
        }
    }

    if(t>=25){
        image_speed=0.5
        if(hspeed<6)
            hspeed+=0.1
        if(hspeed>6)
            hspeed=6
    }
} else if(room==rmStage3){
    if(instance_exists(Player)){
        if(Player.frozen)
            Player.frozen=false
        t+=1
        if(t<50)
            x+=4

        if(t>=75 and t<=200 and t mod 60==0){
            e=instance_create(800,irandom_range(320,416),Stage3EnemyA)
            e.hspeed=-4
            e.spd=4
        }

        if(t==275 or t==625 or t==975 or t==1725)
            instance_create(x+48,y-64,ExclamationPoint)

        if(t>350 and t<450)
            x+=4

        if(t>=430 and t<=550 and t mod 60==0){
            e=instance_create(0,irandom_range(320,416),Stage3EnemyB)
            e.hspeed=4
            e.spd=-4
        }

        if(t>=700 and t<800)
            x-=4

        if(t>=775 and t<900 and t mod 40==0){
            e=instance_create(800,irandom_range(320,416),Stage3EnemyA)
            e.hspeed=-4
            e.spd=4
        }

        if(t>1050 and t<1100)
            x+=4

        if(t==1150)
            instance_create(400,0,Stage3EnemyC)

        if(t==1400 or t==1550){
            instance_create(0,48,Stage3EnemyD)
            instance_create(800,48,Stage3EnemyE)
        }

        if(t>1800 and t<1850)
            x-=4

        if(t==1900)
            instance_create(800,416,Stage3MiniBoss)

        if(t>1900 and !instance_exists(Stage3MiniBoss)){
            if(!Player.frozen){
                Player.x=x+sprite_width/2
                Player.y=y-9
                Player.frozen=true
            }
            if(hspeed<6)
                hspeed+=0.1
            if(hspeed>6)
                hspeed=6
            if(instance_exists(SolidTileDisplay)){
                with(SolidTileDisplay)
                    instance_destroy()
            }
        }
    } else
        t=0
} else if(room==rmPreStage4){
    if(hspeed>0)
        hspeed-=0.1
    if(hspeed<0)
        hspeed=0
    if(hspeed==0){
        Player.frozen=false
        image_speed=0
    }
}
