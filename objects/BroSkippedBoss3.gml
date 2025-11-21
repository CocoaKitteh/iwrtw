#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_exists(Bullet)){
    with(Bullet)
        instance_destroy()
}
t=0
t2=0
spin=0
phase=1
if(room==rmBoss4){
    active=false
    instance_create(16,368,DialogBox)
} else
    active=true
hp=800
instance_create(0,0,Flashbang)
instance_create(400,304,GustavBG)
sound_volume("b1start",0.5)
sound_play("b1start")
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(active){
    if(instance_exists(Player)){
        if(!sound_isplaying("b4") and room==rmBoss4)
            music_play("b4",true)
        if(Player.x<x)
            image_xscale=1
        else
            image_xscale=-1
        if(phase==1){
            t+=1
            rnd=irandom(360)
            if(t>=50 and t<75 and t mod 5==0){
                for(i=0;i<360;i+=360/12){
                    o=instance_create(x,y,Orb)
                    o.sprite_index=sprRedBall4
                    o.speed=8
                    o.direction=i+rnd
                }
                sound_stop("PIM")
                sound_play("PIM")
            }

            if(t>=110 and t<125 and t mod 2==0){
                d=instance_create(x,y,Boss4Dagger)
                d.speed=12
                d.direction=point_direction(x,y,Player.x,Player.y)+random_range(-1,1)
                d.image_angle=d.direction
                sound_stop("PIM")
                sound_play("PIM")
            }

            if(t>=135 and t<150 and t mod 2==0){
                d=instance_create(x,y,Boss4Dagger)
                d.speed=12
                d.direction=point_direction(x,y,Player.x,Player.y)+random_range(-1,1)
                d.image_angle=d.direction
                sound_stop("PIM")
                sound_play("PIM")
            }

            if(t>=160 and t<175 and t mod 2==0){
                d=instance_create(x,y,Boss4Dagger)
                d.speed=12
                d.direction=point_direction(x,y,Player.x,Player.y)+random_range(-1,1)
                d.image_angle=d.direction
                sound_stop("PIM")
                sound_play("PIM")
            }

            if(t>=200 and t<350 and t mod 5==0){
                spin-=13.5
                o=instance_create(x,y,Orb)
                o.sprite_index=sprRedBall4
                o.speed=8
                o.direction=spin
                o=instance_create(x,y,Orb)
                o.sprite_index=sprRedBall4
                o.speed=8
                o.direction=spin+45
                o=instance_create(x,y,Orb)
                o.sprite_index=sprRedBall4
                o.speed=8
                o.direction=spin+90
                o=instance_create(x,y,Orb)
                o.sprite_index=sprRedBall4
                o.speed=8
                o.direction=spin+135
                o=instance_create(x,y,Orb)
                o.sprite_index=sprRedBall4
                o.speed=8
                o.direction=spin+180
                o=instance_create(x,y,Orb)
                o.sprite_index=sprRedBall4
                o.speed=8
                o.direction=spin+225
                o=instance_create(x,y,Orb)
                o.sprite_index=sprRedBall4
                o.speed=8
                o.direction=spin+270
                o=instance_create(x,y,Orb)
                o.sprite_index=sprRedBall4
                o.speed=8
                o.direction=spin+315
                sound_stop("PIM")
                sound_play("PIM")
            }

            if(t>=400 and t<=500 and t mod 25==0){
                instance_create(Player.x,528,Warning)
                o=instance_create(x,y,Orb)
                o.sprite_index=sprRedBall4
                o.gravity_direction=point_direction(x,y,Player.x,Player.y)
                o.gravity=0.1
            }

            if(t>=575 and t<=675 and t mod 50==0){
                for(i=0;i<=800;i+=64)
                    instance_create(i,528,Warning)
            }

            if(t>=575 and t<=675 and (t+25) mod 50==0){
                for(i=32;i<=800;i+=64)
                    instance_create(i,528,Warning)
            }

            if(t>=700 and t<800 and t mod 5==0)
                instance_create(Player.x,528,Warning)

            if(t>=800 and t<=950 and t mod 30==0){
                for(i=272;i<512;i+=80){
                    if(Player.x<x){
                        o=instance_create(x,i+56,Orb)
                        o.sprite_index=sprRedBall4
                        o.gravity_direction=180
                        o.gravity=0.1
                    } else {
                        o=instance_create(x,i+56,Orb)
                        o.sprite_index=sprRedBall4
                        o.gravity_direction=0
                        o.gravity=0.1
                    }
                }
                sound_stop("PIM")
                sound_play("PIM")
            }

            if(t>=800 and t<=950 and (t+15) mod 30==0){
                for(i=272;i<512;i+=80){
                    if(Player.x<x){
                        o=instance_create(x,i+96,Orb)
                        o.sprite_index=sprRedBall4
                        o.gravity_direction=180
                        o.gravity=0.1
                    } else {
                        o=instance_create(x,i+96,Orb)
                        o.sprite_index=sprRedBall4
                        o.gravity_direction=0
                        o.gravity=0.1
                    }
                }
                sound_stop("PIM")
                sound_play("PIM")
            }

            if(t>=1050 and t<1300 and t mod 30==0){
                for(i=0;i<360;i+=360/12){
                    o=instance_create(Player.x,200,Orb)
                    o.sprite_index=sprRedBall4
                    o.speed=8
                    o.direction=i
                }
                for(i=0;i<360;i+=360/12){
                    o=instance_create(Player.x,200,OrbDirectionShmingWhatchamacallit)
                    o.sprite_index=sprRedBall4
                    o.control=true
                    o.xx=Player.x
                    o.yy=200
                    o.angle=i+t
                    o.distance=0
                    o.angspd=0.6
                    o.disspd=5
                    o=instance_create(Player.x,200,OrbDirectionShmingWhatchamacallit)
                    o.sprite_index=sprRedBall4
                    o.control=true
                    o.xx=Player.x
                    o.yy=200
                    o.angle=i+t
                    o.distance=0
                    o.angspd=-0.6
                    o.disspd=5
                }
                sound_stop("PIM")
                sound_play("PIM")
            }

            if(t==1400){
                for(i=0;i<360;i+=360/16){
                    o=instance_create(x,y,Orb)
                    o.sprite_index=sprRedBall4
                    o.speed=6
                    o.gravity_direction=i+point_direction(x,y,Player.x,Player.y)
                    o.direction=o.gravity_direction
                    o.gravity=-0.3
                }
                sound_stop("PIM")
                sound_play("PIM")
                visible=false
            }

            if(t==1450){
                if(x==704)
                    x=96
                else
                    x=704
                for(i=0;i<360;i+=360/16){
                    o=instance_create(x,y,Orb)
                    o.sprite_index=sprRedBall4
                    o.speed=6
                    o.gravity_direction=i+point_direction(x,y,Player.x,Player.y)
                    o.direction=o.gravity_direction
                    o.gravity=-0.3
                }
                sound_stop("PIM")
                sound_play("PIM")
                visible=true
                t=0
            }

            if(hp==200 and phase!=2){
                if(!visible){
                    if(x==704)
                        x=96
                    else
                        x=704
                    for(i=0;i<360;i+=360/16){
                        o=instance_create(x,y,Orb)
                        o.sprite_index=sprRedBall4
                        o.speed=6
                        o.gravity_direction=i+point_direction(x,y,Player.x,Player.y)
                        o.direction=o.gravity_direction
                        o.gravity=-0.3
                    }
                    sound_stop("PIM")
                    sound_play("PIM")
                    visible=true
                }
                instance_create(x,y,Power)
                sound_play("b1p2")
                phase=2
            }
        } else {
            t=0
            t2+=1
            if(t2>=100){
                if(t2 mod 100==0){
                    for(i=0;i<=800;i+=64)
                        instance_create(i,528,Warning)
                }

                if((t2+50) mod 100==0){
                    for(i=32;i<=800;i+=64)
                        instance_create(i,528,Warning)
                }

                if((t2+25) mod 25==0){
                    /* for(i=0;i<360;i+=360/12){
                        o=instance_create(Player.x,200,Orb)
                        o.sprite_index=sprRedBall4
                        o.speed=5
                        o.direction=i
                    }
                    for(i=0;i<360;i+=360/16){
                        o=instance_create(Player.x,200,Orb)
                        o.sprite_index=sprRedBall4
                        o.speed=10
                        o.direction=i
                    } */
                    if((t2) mod 50==0){
                        for(i=272;i<512;i+=80){
                            if(Player.x<x){
                                o=instance_create(x,i+56,Orb)
                                o.sprite_index=sprRedBall4
                                o.gravity_direction=180
                                o.gravity=0.2
                            } else {
                                o=instance_create(x,i+56,Orb)
                                o.sprite_index=sprRedBall4
                                o.gravity_direction=0
                                o.gravity=0.2
                            }
                        }
                    }

                    if((t2+25) mod 50==0){
                        for(i=272;i<512;i+=80){
                            if(Player.x<x){
                                o=instance_create(x,i+96,Orb)
                                o.sprite_index=sprRedBall4
                                o.gravity_direction=180
                                o.gravity=0.2
                            } else {
                                o=instance_create(x,i+96,Orb)
                                o.sprite_index=sprRedBall4
                                o.gravity_direction=0
                                o.gravity=0.2
                            }
                        }
                    }
                }
            }
        }
        if(hp<=0){
            instance_create(0,0,Flashbang)
            if(instance_exists(Orb)){
                with(Orb)
                    instance_destroy()
            }
            if(instance_exists(Warning)){
                with(Warning)
                    instance_destroy()
            }
            if(instance_exists(Laser)){
                with(Laser)
                    instance_destroy()
            }
            if(instance_exists(Bullet)){
                with(Bullet)
                    instance_destroy()
            }
            d=instance_create(x,y,Boss4Dead)
            d.image_xscale=image_xscale
            sound_play("gayser")
            Player.frozen=true
            music_stop()
            instance_destroy()
        }
    }
}
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(visible){
    if(active)
        hp-=1
    sound_play("boss_hit")
    instance_destroy_other()
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
draw_healthbar(4,4,796,28,hp/8,c_white,c_red,c_lime,180,true,true)
