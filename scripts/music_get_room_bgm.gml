///music_get_room_bgm()

switch(room) {
    case rTitle:
    case rMenu:
    case rOptions:
    case rSample:
    case rSampleTriggers:
        return "guy_rock";

    case rSampleBoss:
    case rmWROOOOOOONG:
        // objSampleBoss starts the room music. We don't want it stopped here.
        return music_no_change;

    case rmStage1:
        return "s1"

    case rmAvoidance:
        return "HEWINS"

    case rmStage2:
        return "s2"

    case rmStage3:
        return "s3"

    case rmStage4A:
    case rmStage4B:
        return "s4"

    default:
        return music_none;
}
