# TurtleBot3 Autonomous Navigation with ROS 2 Nav2

**Robotics Software Intern Assignment | Antropi Robotics**  
**Submitted by:** Sai Pradeep Sathapathi

## Overview

This project documents a TurtleBot3 autonomous-navigation demonstration using ROS 2 Jazzy, Gazebo, RViz2, and Navigation2 (Nav2). The robot is launched in a simulated environment, given a navigation goal through RViz2, and observed as it plans and follows a route while accounting for obstacles.

The project uses existing ROS 2 and Nav2 packages. It does not claim a custom path planner or custom obstacle-avoidance algorithm.

## Environment

- Host OS: Windows 11
- Linux environment: Ubuntu 24.04 on WSL2
- ROS 2 distribution: Jazzy
- Navigation: Navigation2 (Nav2)
- Simulation and visualization: Gazebo and RViz2
- Robot: TurtleBot3 simulation supplied by the installed Nav2 packages

> The exact Gazebo version and graphics configuration depend on the packages installed on the system. This setup was tested in the author's environment; WSL2 GUI/3D support can vary by computer.

## Prerequisites

1. Windows 11 with WSL2 enabled.
2. Ubuntu 24.04 installed in WSL2.
3. ROS 2 Jazzy Desktop installed.
4. The Nav2 and minimal TurtleBot simulation packages installed.
5. Working WSLg/GUI and graphics support for Gazebo and RViz2.

## Install dependencies

Open an Ubuntu terminal:

```bash
sudo apt update
sudo apt install -y ros-jazzy-navigation2 ros-jazzy-nav2-bringup 'ros-jazzy-nav2-minimal-tb*'
```

If ROS 2 Jazzy is not installed yet, follow the official [ROS 2 Jazzy installation guide](https://docs.ros.org/en/jazzy/Installation.html).

## Run the simulation

From the repository directory:

```bash
chmod +x run_simulation.sh
./run_simulation.sh
```

Equivalent command:

```bash
source /opt/ros/jazzy/setup.bash
ros2 launch nav2_bringup tb3_simulation_launch.py headless:=False
```

Wait for Gazebo and RViz2 to initialize.

## Test autonomous navigation

1. In RViz2, wait for Nav2 to become active. If a Startup control is shown, activate it.
2. Use **2D Pose Estimate** to set the robot's initial position and heading on the map, if needed.
3. Use **Nav2 Goal** (or the configured navigation-goal tool) to choose a reachable destination.
4. Observe the planned route and the robot's movement in Gazebo and RViz2.
5. Verify that the robot reaches the goal and that obstacle avoidance is visible during the run.

The robot must be tested in the actual simulation before claiming successful goal completion or obstacle avoidance.

## Repository contents

```text
.
├── README.md
├── LICENSE
├── .gitignore
├── run_simulation.sh
├── docs/
│   ├── architecture.md
│   └── screenshots/
├── config/
└── launch/
```

`config/` and `launch/` are placeholders for project-specific files if additional configuration is created. The current demonstration uses the installed Nav2 launch file and standard packages; no custom configuration is claimed.

## Demo recording

Add the URL to your 1–2 minute screen recording here:

**Demo video:** _Add your video URL before submission._

## Architecture

See [docs/architecture.md](docs/architecture.md) for a text-based architecture and data-flow summary. Add the architecture image and genuine screenshots to `docs/` if you want them included in the repository.

## Troubleshooting

- **`ros2: command not found`:** run `source /opt/ros/jazzy/setup.bash`.
- **Nav2 package not found:** install the dependencies above, then source ROS 2 again.
- **Gazebo or RViz2 does not open:** check the terminal error and confirm WSLg/graphics support. Restart WSL with `wsl --shutdown` from PowerShell and retry.
- **Robot does not move:** check Nav2 status, initial pose, map alignment, selected goal, and terminal output.
- **Goal fails:** select a reachable point and inspect Nav2 planner/controller messages.

## References

- [ROS 2 Jazzy documentation](https://docs.ros.org/en/jazzy/)
- [Nav2 Jazzy quickstart](https://docs.nav2.org/jazzy/getting_started/quickstart/quickstart.html)
- [Nav2 documentation](https://docs.nav2.org/)
- [TurtleBot3 simulation guide](https://emanual.robotis.com/docs/en/platform/turtlebot3/simulation/)

## Author

**Sai Pradeep Sathapathi**
