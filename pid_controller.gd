extends Object

class_name PIDController

var setpoint = 0.0

var Kp = 1.0
var Ki = 0.1
var Kd = 0.01

var previous_error = 0.0
var integral = 0.0

func set_pid(proportional:float, integrative:float, derivative:float):
	Kp = proportional
	Ki = integrative
	Kd = derivative

func step(measure:float, dt:float) -> float:
	var ret = 0
	var error = setpoint - measure
	integral = integral + error * dt
	var derivative = (error - previous_error) / dt
	ret = Kp * error + Ki * integral + Kd * derivative
	previous_error = error
	return ret
