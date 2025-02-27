# Date and Time Formatting

### Date and Time Format Specifiers

The format specifiers used are:
- `%a`: Abbreviated weekday name (e.g., Mon)
- `%A`: Full weekday name (e.g., Monday)
- `%b`: Abbreviated month name (e.g., Jan)
- `%B`: Full month name (e.g., January)
- `%c`: Full date and time representation (e.g., Mon Jan 01 13:00:00 2023)
- `%C`: Century number (e.g., 20 for the year 2023)
- `%d`: Day of the month, zero-padded (e.g., 01)
- `%D`: Date in mm/dd/yy format (e.g., 01/01/23)
- `%e`: Day of the month, space-padded (e.g.,  1)
- `%F`: Full date in yyyy-mm-dd format (e.g., 2023-01-01)
- `%g`: Last two digits of the year corresponding to the ISO week number (e.g., 23 for 2023)
- `%G`: Year corresponding to the ISO week number (e.g., 2023)
- `%h`: Same as %b (abbreviated month name)
- `%H`: Hour in 24-hour format, zero-padded (e.g., 13)
- `%I`: Hour in 12-hour format, zero-padded (e.g., 01)
- `%j`: Day of the year, zero-padded (e.g., 001 for January 1st)
- `%k`: Hour in 24-hour format, space-padded (e.g., 13)
- `%l`: Hour in 12-hour format, space-padded (e.g.,  1)
- `%m`: Month as a number, zero-padded (e.g., 01 for January)
- `%M`: Minute, zero-padded (e.g., 00)
- `%n`: Newline character
- `%N`: Nanoseconds, zero-padded (e.g., 000000000)
- `%p`: AM or PM designation
- `%P`: AM or PM designation in lowercase
- `%r`: 12-hour clock time (e.g., 01:00:00 PM)
- `%R`: 24-hour time without seconds (e.g., 13:00)
- `%s`: Seconds since the Unix epoch (1970-01-01 00:00:00 UTC)
- `%S`: Second, zero-padded (e.g., 00)
- `%t`: Tab character
- `%T`: Time in 24-hour format with seconds (e.g., 13:00:00)
- `%u`: Day of the week as a number (1 for Monday, 7 for Sunday)
- `%U`: Week number of the year, with Sunday as the first day (00-53)
- `%V`: ISO week number, with Monday as the first day (01-53)
- `%w`: Day of the week as a number (0 for Sunday, 6 for Saturday)
- `%W`: Week number of the year, with Monday as the first day (00-53)
- `%x`: Locale-specific date representation (e.g., 01/01/23)
- `%X`: Locale-specific time representation (e.g., 13:00:00)
- `%y`: Last two digits of the year (e.g., 23 for 2023)
- `%Y`: Full year (e.g., 2023)
- `%z`: Numeric time zone offset (e.g., -0500)
- `%:z`: Numeric time zone offset with colon (e.g., -05:00)
- `%::z`: Numeric time zone offset with seconds (e.g., -05:00:00)
- `%:::z`: Numeric time zone offset with necessary precision (e.g., -05, +05:30)
- `%Z`: Time zone abbreviation (e.g., EST)
- `%%`: Literal percent sign

### Example Output

To format the date and time using the specifiers, you can use the following format string:

```
%a %b %d %Y, %I:%M %p
```

An example output of the formatted date and time would be:

```
Mon Jan 01 2023, 01:00 PM
```

You can customize the format string to display the date and time in different ways. Here are a few examples:

- Full date and time: `%A, %B %d, %Y %H:%M:%S`
    - Example: `Monday, January 01, 2023 13:00:00`
- ISO 8601 date and time: `%Y-%m-%dT%H:%M:%S%z`
    - Example: `2023-01-01T13:00:00-0500`
- Short date: `%D`
    - Example: `01/01/23`
- Time with seconds: `%r`
    - Example: `01:00:00 PM`

Feel free to experiment with different format specifiers to achieve the desired output.
