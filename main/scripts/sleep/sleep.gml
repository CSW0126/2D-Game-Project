///@description sleep(MS)
///@param ms


var endTime = get_timer() + ((argument0*1000));
do {
	var _time =global.one_second;
}until (get_timer() >= endTime);

if get_timer() >= endTime{_time = 60};

