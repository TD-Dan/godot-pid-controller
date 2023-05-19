extends Object

class_name PDController

var setpoint = 0.0

var Kp = 1.0
var Kd = 0.1

var previous_error = 0.0

func set_pd(proportional:float, derivative:float):
	Kp = proportional
	Kd = derivative

func step(measure:float, dt:float) -> float:
	var ret = 0
	var error = setpoint - measure
	var derivative = (error - previous_error) / dt
	ret = Kp * error + Kd * derivative
	previous_error = error
	return ret
