# Managing SCRIPT_INFO in motd-raspberrypi

### Structure

The `SCRIPT_INFO` in the `motd-raspberrypi` script follows a specific structure to define and manage various system information functions. The structure is as follows:

```
#Title !function -- !function
```

- `#Title`: This is a comment that serves as a title or description for the section.
- `!function`: This denotes a function that retrieves specific system information. Multiple functions can be chained using `--` for a more muted, less visible style.

### Available Get Functions

Here are the available get functions that can be used within the `SCRIPT_INFO` structure:

- `cpu_temperature`: Gets the raw CPU temperature in Celsius.
- `cpu_temperature_c`: Shows the CPU temperature in Celsius with a "°C" suffix.
- `cpu_temperature_f`: Displays the CPU temperature in Fahrenheit with a "°F" suffix.
- `cpu_temperature_k`: Shows the CPU temperature in Kelvin with a "K" suffix.
- `cpu_usage`: Displays the CPU usage percentage.
- `disk`: Shows the disk usage in the format "used / total size".
- `disk_free`: Displays the free disk space.
- `disk_size`: Shows the total size of the root directory.
- `disk_used`: Displays the used disk space.
- `host_name`: Shows the hostname of the device.
- `last_date`: Displays the last login date.
- `last_ip`: Shows the IP address from the last login.
- `local_ip`: Displays the local IP address.
- `login_date`: Shows the current login date.
- `memory`: Displays the memory usage in the format "used / total size".
- `memory_free`: Shows the free memory.
- `memory_size`: Displays the total memory size.
- `memory_used`: Shows the used memory.
- `model_info`: Retrieves the model information of the Raspberry Pi.
- `os_info`: Fetches the operating system details.
- `process_count`: Displays the number of running processes.
- `update_count`: Shows the number of upgradable packages.
- `uptime_date`: Displays the date since the device has been running.
- `uptime_days`: Shows the uptime in days.
- `user_count`: Displays the number of logged-in users.
- `user_name`: Shows the name of the logged-in user.

### Example

Here is an example of how to use the `SCRIPT_INFO` structure:

```
#System !host_name -- !local_ip local
```

This example will display the system information including the hostname, local IP address in a more muted, less visible style with "local text next to it".
```
System  : host ❯ 192.168.X.X local
```

### Adding New Functions

To add new functions, follow the existing structure and ensure the function is defined and available in the script. Update the `SCRIPT_INFO` accordingly to include the new function.
