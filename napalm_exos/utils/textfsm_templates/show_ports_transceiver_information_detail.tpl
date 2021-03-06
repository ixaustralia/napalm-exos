Value Filldown port_number (\S+)
Value media_type (.+)
Value vendor_name (.+)
Value part_number (\S+)
Value serial_number (\S+)
Value wavelength (\d+)
Value temp_celcius (\S+)
Value voltage (\S+)
Value channel (\d+)
Value rx_power_dbm (\S+)
Value tx_power_dbm (\S+)
Value tx_current_ma (\S+)

Start
	^Port :\s+${port_number}
	^Error:.* -> Record
	^\s+Media Type\s+:\s+${media_type}(\s+\(Unsupported\))?
	^\s+Vendor Name\s+:\s+${vendor_name}
	^\s+Part Number\s+:\s+${part_number}
	^\s+Serial Number\s+:\s+${serial_number}
	^\s+Wavelength\s+:\s+${wavelength}
	^\s+Temp \(Celsius\)\s+:\s+${temp_celcius}
	^\s+Voltage AUX-1\/Vcc \(Volts\)\s+:\s+${voltage}
	^Channel\s+:\s+${channel}
	^\s+Rx Power \(dBm\)\s+:\s+${rx_power_dbm}
	^\s+Tx Power \(dBm\)\s+:\s+${tx_power_dbm}
	^\s+Tx Bias Current \(mA\)\s*:\s+${tx_current_ma} -> Record