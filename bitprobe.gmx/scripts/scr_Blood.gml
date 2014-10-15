Sname = part_system_create();

blood = part_type_create();
part_type_shape(blood,pt_shape_sphere);
part_type_size(blood,0.10,0.30,0,0.10);
part_type_scale(blood,1,1);
part_type_color1(blood,191);
part_type_alpha3(blood,1,1,1);
part_type_speed(blood,1,5,0,0);
part_type_direction(blood,0,60,0,0);
part_type_gravity(blood,0,270);
part_type_orientation(blood,0,0,0,0,0);
part_type_blend(blood,1);
part_type_life(blood,20,20);

emitter = part_emitter_create(Sname);
part_emitter_region(Sname,emitter,x,x,y,y,0,0);
part_emitter_stream(Sname,emitter,blood,5);
