# Inverted Cart-Pendulum
This project demonstrates the simulation and control of an **Inverted Cart-Pendulum System** using **LQR (Linear Quadratic Regulator)** and **Pole Placement** techniques in MATLAB.

## 🎯 Objective

The goal of this project is to stabilize a pendulum in the inverted position on a cart, using modern control techniques. The pendulum starts from a displaced or falling position and is brought to the upright position while keeping the cart stable on a track.

## 🧠 Techniques Used

- **Linear Quadratic Regulator (LQR)**: An optimal control method that minimizes a cost function based on state and control effort.
- **Pole Placement**: Manual placement of closed-loop poles to achieve desired dynamic behavior.

## 📺 Learning Source

This project is based on concepts and code structure explained in this excellent YouTube playlist:

📘 [Inverted Pendulum Control Series – by Steve Brunton](https://youtube.com/playlist?list=PLMrJAkhIeNNR20Mz-VpzgfQs5zrYi085m&si=Xf09VGBPqjSV6Xvo)

> I highly recommend watching the entire series for a deep understanding of the mathematics and intuition behind these control methods.

## 🧪 Features

- Modeling of the nonlinear dynamics of a cart-pendulum system.
- Linearization around the upright equilibrium.
- Implementation of LQR controller in MATLAB.
- Implementation of Pole Placement controller in MATLAB.
- Simulation and visualization of the pendulum motion.

## 🖥️ Requirements

- MATLAB 
- Control System Toolbox (for `lqr`, `place` functions)

## 📂 Project Structure
 - **draw.m** # Sketch of cart-pendulum
 - **pendulum_cart.m**  # For nonlinear dynamic equation of state space dXdt
 - **Update.m** # to run the sketch for each X vector at every instance of time
 - **sim_pendulum.m** # Simulate the sketch with 0 forces or free fall condition
 - **lqr_poles.m** # Simulate sketch to stabilize pendulum in upright position

## 📄 License

This project is licensed under the [MIT License](LICENSE).  
You are free to use, modify, and distribute this project with proper credit.

