# Pidrone - in this Repo we try to creat a Drone with Raspberry Pi model 3B

## Hardwares
- Drone frame:Quadcopter  F450
- Raspberry Pi 3 model B
- IMU: MPU6050 is a 6-axis(3-axis Gyro and 3-axis Acc)
- Radio module: NRF24L01
- ESC and Bruless Motos
## Software 
- Kalman
- LPFT, HPFT
- PID 
## Peripheral Protocol
- I2C -> MPU6050
- SPI -> NRF24L01
- UART
- PWM


## Started steps

`1` Clone the repository:

```
    git clone https://github.com/SonRiGard/Pidrone.git
    cd Pidrone
```
`2` Init vitual environment and install dependence lib include file "requirements.txt" 
```
    make install
```
    Use cmd to clear vitual environment 
```
    make clear
```

