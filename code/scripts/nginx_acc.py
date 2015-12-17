ips = {}

fh = open("/home/eyestrain/code/scripts/access.log", "r").readlines()
for line in fh:
    ip = line.split(" ")[0]
    if 6 < len(ip) <=15:
        ips[ip] = ips.get(ip, 0) + 1
print ips
