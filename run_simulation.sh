#!/usr/bin/env bash
set -euo pipefail

# Launch the standard Nav2 TurtleBot3 simulation for ROS 2 Jazzy.
# Run this script from Ubuntu 24.04 with the required ROS packages installed.
source /opt/ros/jazzy/setup.bash
exec ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False
