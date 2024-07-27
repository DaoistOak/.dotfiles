import psutil
from plyer import notification
import time

def get_battery_status():
    battery = psutil.sensors_battery()
    if battery is not None:
        percent = battery.percent
        power_plugged = battery.power_plugged
        return percent, power_plugged
    else:
        return None

def send_notification(percent, power_plugged):
    if power_plugged:
        message = f"Charging: {percent}%"
    else:
        message = f"Discharging: {percent}%"

    notification.notify(
        title="Battery Status",
        message=message,
        timeout=10
    )

def main():
    while True:
        battery_info = get_battery_status()
        if battery_info is not None:
            percent, power_plugged = battery_info
            if not power_plugged and percent <= 20:
                send_notification(percent, power_plugged)
        # Check battery status every 60 seconds
        time.sleep(60)

if __name__ == "__main__":
    main()
