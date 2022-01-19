Value IPADDRESS (\d+.\d+.\d+.\d+)
Value MACADDRESS (\w+-\w+-\w+)
Value VLAN (\S+|\d+)
Value INTERFACE (\S+)
Value AGING (\d+)
Value TYPE (\S+)

Start
  ^IP\s+address.* -> ARP

ARP
  ^${IPADDRESS}\s+${MACADDRESS}\s+${VLAN}\s+${INTERFACE}\s+${AGING}\s+${TYPE} -> Record
  