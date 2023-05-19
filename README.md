<img src="https://badgen.net/badge/Godot/v%204.0.2/blue?icon=https://godotengine.org/themes/godotengine/assets/press/icon_monochrome_dark.svg"> <img src="https://badgen.net/badge/license/MIT/blue"> <img src="https://badgen.net/badge/version/v%201.0.0/cyan">

# godot-pid-controller
PID and PD controller classes for godot

## What is a PID controller?

A PID controller is a feedback control algorithm that continuously calculates and adjusts the control output based on the error between the desired setpoint and the measured process variable. It consists of three components:

Proportional (P) term: Produces an output proportional to the current error.
Integral (I) term: Integrates the error over time to eliminate steady-state errors.
Derivative (D) term: Predicts the future trend of the error based on its rate of change.

## How to use it in Godot?

1. Copy pd_controller.gd and/or pid_controller.gd to your project addons/godot-pid-controller folder
2. setup your process loop:
```
var my_pid = PIDController.new()
...
func _process(delta):
  my_pid.setpoint = desired_target_value
  my_actual_value -= my_pid.step(my_actual_value, delta)
```
4. Tune your pid controller Ki, Kp and Kd values for your case

Check out :
https://github.com/TD-Dan/godot-pid-controller-examples

