extends Object

class_name PIDController

var setpoint = 0.0

var Kp = 1.0
var Ki = 0.1
var Kd = 0.01

var _previous_error = 0.0
var _integral = 0.0

func set_pid(proportional:float, integrative:float, derivative:float):
	Kp = proportional
	Ki = integrative
	Kd = derivative

## Evaluate one step towards the setpoint
## my_process_value -= my_pd_controller.step(my_process_value, delta_time)
func step(measure:float, dt:float) -> float:
	var ret = 0
	var error = setpoint - measure
	_integral = _integral + error * dt
	var derivative = (error - _previous_error) / dt
	ret = Kp * error + Ki * _integral + Kd * derivative
	_previous_error = error
	return ret

## Reset internal state to zero
func reset():
	_previous_error = 0.0
	_integral = 0.0
